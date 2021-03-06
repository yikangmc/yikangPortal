(function($) {
	// 自定义返回类型 true
	var noop = function(){ return true; };

	// 自定义数字长度
	var frameCount = 0;

	var editorData = function(data){
		var magUrl = data.data.fileUrl;
		var mag = "<img style='width: 100%;' src='" + magUrl + "' />"
		$('#destination').append(mag);
	}

	$.datas = function(){
		var data = $('#destination').html();
		alert(data)
	}

	// 定义数组
	$.uploadDefault = {
		// http://192.168.1.21:8081/fileManage/fileUpload/imageFileUpload
		// http://54.223.35.197:8088/yikangFileManage/fileUpload/imageFileUpload
		url: "/fileUpload/imageFileUpload",
		fileName: "files",
		dataType: "json",
		params: { fileGroup: "headImage" },
		onSend: noop,
		onSubmit: noop,
		onComplate: editorData
	};

	$.upload = function(options) {
		var opts = $.extend(jQuery.uploadDefault, options);
		if (opts.url == '') {
			return;
		}
		
		var canSend = opts.onSend();
		if (!canSend) {
			return;
		}
		var frameName = 'upload_frame_' + (frameCount++);
		var iframe = $('<iframe id="datas" style="position:absolute;top:-9999px" />').attr('name', frameName);
		var form = $('<form method="post" style="display:none;" enctype="multipart/form-data" />').attr('name', 'form_' + frameName);
		form.attr("target", frameName).attr('action', opts.url);
		// form中增加数据域
		// var formHtml = document.querySelector('input[name=files]').value;
		// var formHtml = '<input type="file" name="' + opts.fileName + '"
		// class="fileInput" draggable="true" capture="camera" >';
		var formHtml = '<input type="file" name="' + opts.fileName + '" onchange="onChooseFile(this)">';
		for (key in opts.params) {
			formHtml += '<input type="hidden" name="' + key + '" value="' + opts.params[key] + '">';
		}
		form.append(formHtml);
		iframe.appendTo("body");
		form.appendTo("body");
		form.submit(opts.onSubmit);
		// iframe 在提交完成之后
		iframe.load(function() {
			var contents = $(this).contents().get(0);
			var data = $(contents).find('body').text();
			if ('json' == opts.dataType) {
				data = window.eval('(' + data + ')');
				data = window.eval('(' + data + ')');
			}
			opts.onComplate(data);
			setTimeout(function() {
				iframe.remove();
				form.remove();
			}, 5000);
		});
		
		// 文件框
		var fileInput = $('input[type=file][name=' + opts.fileName + ']', form);
		fileInput.click();
	};
})(jQuery);



// 选中文件, 提交表单(开始上传)
var onChooseFile = function(fileInputDOM) {
	var form = $(fileInputDOM).parent();
	form.submit();
};

