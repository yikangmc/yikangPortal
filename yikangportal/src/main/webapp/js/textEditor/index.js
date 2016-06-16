(function () {
    var input = document.querySelector('input');

    input.onchange = function () {
        alert(1)
        lrz(this.files[0], { width : 720 }, function (results) {
            // 你需要的数据都在这里，可以以字符串的形式传送base64给服务端转存为图片。
            // console.log(results);

            // 以下为演示用内容
            var report = document.querySelector('#destination'),
                footer = document.querySelector('footer');

            // report.innerHTML = footer.innerHTML =  '';
            // tip.innerHTML = '<p>正在生成和上传..</p> <small class="text-muted">演示使用了大量内存，可能会造成几秒内卡顿，不代表真实表现，请亲测。</small>';
            // demo_report('原始图片', results.blob, results.origin.size);

            setTimeout(function () {
                demo_report('客户端预压的图片', results.base64, results.base64.length * 0.8);

                // 发送到后端
                var xhr = new XMLHttpRequest();
                var data = {
                    base64: results.base64,
                    size: results.base64.length // 校验用，防止未完整接收
                };

                xhr.open('POST', '/');
                xhr.setRequestHeader('Content-Type', 'application/json; charset=utf-8');
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var result = JSON.parse(xhr.response);

                        result.error
                            ? alert('服务端错误，未能保存图片')
                            : demo_report('服务端实存的图片', result.src, result.size);

                        tip.innerHTML = '<p>生成和上传完毕</p> <small class="text-muted">演示使用了大量内存，可能会造成几秒内卡顿，不代表真实表现，请亲测。</small>';
                    }
                };

                xhr.send(JSON.stringify(data)); // 发送base64
            }, 100);
        });
    };

    /**
     * 演示报告
     * @param title
     * @param src
     * @param size
     */
    function demo_report(title, src, size) {
        alert(2)
        var img = new Image(),
            dv = document.createElement('div'),
            size = (size / 1024).toFixed(2) + 'KB';

        img.onload = function () {
            // var content = '<ul>' +
            //     '<li>' + title + '（' + img.width + ' X ' + img.height + '）</li>' +
            //     '<li class="text-cyan">' + size + '</li>' +
            //     '</ul>';

            // dv.className = 'item';
            // dv.innerHTML = content;
            // dv.appendChild(img);
            document.querySelector('#destination').appendChild(img);
        };

        img.src = src;
    }

    // 演示用服务器太慢，做个延缓加载
    window.onload = function () {
        input.style.display = 'block';
    }
})();