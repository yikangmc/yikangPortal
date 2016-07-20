(function () {
    var input = document.querySelector('input');

    input.onchange = function () {
        alert(1)
        lrz(this.files[0], { width : 720 }, function (results) {

            // 以下为演示用内容
            var report = document.querySelector('#destination'),
                footer = document.querySelector('footer');

            setTimeout(function () {
                demo_report('客户端预压的图片', results.base64, results.base64.length * 0.8);

                // 发送到后端
                var xhr = new XMLHttpRequest();
                var data = {
                    base64: results.base64,
                    size: results.base64.length 
                };

                xhr.open('POST', '/');
                xhr.setRequestHeader('Content-Type', 'application/json; charset=utf-8');
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var result = JSON.parse(xhr.response);

                        result.error
                            ? alert('服务端错误，未能保存图片')
                            : demo_report('服务端实存的图片', result.src, result.size);
                    }
                };

                xhr.send(JSON.stringify(data));
            }, 100);
        });
    };

    
    function demo_report(title, src, size) {
        var img = new Image(),
            dv = document.createElement('div'),
            size = (size / 1024).toFixed(2) + 'KB';

        img.onload = function () {
            document.querySelector('#destination').appendChild(img);
        };

        img.src = src;
    }

    // 演示用服务器太慢，做个延缓加载
    window.onload = function () {
        input.style.display = 'block';
    }
})();