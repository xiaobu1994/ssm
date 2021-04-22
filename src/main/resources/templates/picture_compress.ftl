<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>图片上传</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <link rel="stylesheet" href="/static/weui/css/weui-2.0.css"/>
    <link rel="stylesheet" href="/static/weui/css/weuix.css"/>

    <script src="/static/weui/js/jquery-2.1.4.js"></script>
    <script src="/static/weui/js/zepto.min.js"></script>
    <script src="/static/weui/js/zepto.weui.js"></script>
    <script src="/static/weui/js/lrz.min.js"></script>
    <script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script src="https://res.wx.qq.com/open/libs/weuijs/1.0.0/weui.min.js"></script>
    <script>

        var  base64;
        $(function () {

            var tmpl = '<li class="weui-uploader__file" id="uploadImage" style="background-image:url(#url#)"></li>';
            var $uploaderInput = $("#uploaderInput"); //上传按钮+
            var $uploaderFiles = $("#uploaderFiles");    //图片列表
            var $galleryImg = $(".weui-gallery__img");//相册图片地址
            var $gallery = $(".weui-gallery");
            var uploaderFiles = document.getElementById("uploaderFiles");
            $uploaderInput.on("change", function (e) {
                var linum = uploaderFiles.getElementsByTagName("li").length;
                var src, url = window.URL || window.webkitURL || window.mozURL, files = e.target.files;
                for (var i = 0, len = files.length; i < len; ++i) {
                    var file = files[i];
                    lrz(file,{width:750,fieldName:"file"}).then(function(data) {
                        //console.log(data);
                        base64=data.base64;
                    }).then(function(data) {

                    }).catch(function(err) {
                        console.log(err);
                    });
                    if (url) {
                        src = url.createObjectURL(file);
                    } else {
                        src = e.target.result;
                    }
                }
                if (linum >= 1) {
                    uploaderFiles.removeChild(uploaderFiles.getElementsByTagName("li")[0]);
                }
                $uploaderFiles.append($(tmpl.replace('#url#', src)));
            });
            $uploaderFiles.on("click", "li", function () {
                $galleryImg.attr("style", this.getAttribute("style"));
                $gallery.fadeIn(100);
            });
            $gallery.on("click", function () {
                $gallery.fadeOut(100);
            });
            $('#submit_button').on('click', function () {
                var uploaderFiles = document.getElementById("uploaderFiles");
                var uploadImage = document.getElementById("uploadImage");
                if (uploadImage == null) {
                    alert("所选图片不能为空...");
                    return false;
                }
                    $.ajax({
                        url: "/picture/upload",
                        type: 'post',
                        data: {"base64": base64},
                        cache: false,
                        dataType: 'text',
                        async: false, //默认为true 异步
                        error: function () {
                            alert('系统错误');
                            error = true;
                        },
                        success: function (data) {
                            alert(data);
                            uploaderFiles.removeChild(uploaderFiles.getElementsByTagName("li")[0]);
                        }
                    });
            });


            //图片转base64
            function getBase64Image(img) {
                var canvas = document.createElement("canvas");
                canvas.width = img.width;
                canvas.height = img.height;
                var ctx = canvas.getContext("2d");
                ctx.drawImage(img, 0, 0, img.width, img.height);
                //强制设置为JPEG
                //var ext = img.src.substring(img.src.lastIndexOf(".") + 1).toLowerCase();
                // return canvas.toDataURL("image/"+ext)+;
                return canvas.toDataURL("image/JPEG");
            }
        })
        ;

    </script>
</head>
<link rel="icon" type="image/x-icon" href="/static/img/favicon.ico">
<body ontouchstart>
<div class="page-hd">
    <h1 class="page-hd-title">
        图片上传和预览
    </h1>
    <p class="page-hd-desc">需要加载lrz.min.js压缩插件</p>
</div>

<div class="page-bd-15" id="form">
    <div class="weui-uploader">
        <div class="weui-uploader__hd">
            <p class="weui-uploader__title">图片预览</p>
            <div class="weui-uploader__info">0/1</div>
        </div>
        <div class="weui-uploader__bd">
            <ul class="weui-uploader__files" id="uploaderFiles">
            </ul>
            <div class="weui-uploader__input-box" id="upload">
                <input id="uploaderInput" class="weui-uploader__input" accept="image/*" multiple="" type="file">
            </div>
        </div>
    </div>

    <div class="weui-gallery" style="display: none">
        <span class="weui-gallery__img"></span>
        <div class="weui-gallery__opr">
        </div>
    </div>


    <div class="page__bd page__bd_spacing">
        <a href="javascript:void(0);" id="submit_button" class="weui-btn weui-btn_primary">提交</a>
    </div>


</div>
<br>
<br>
<div class="weui-footer weui-footer_fixed-bottom">
    <p class="weui-footer__links">
        <a href="../index.html" class="weui-footer__link">WeUI首页</a>
    </p>
    <p class="weui-footer__text">Copyright &copy; xiaobu</p>
</div>
</body>
<script>
</script>
</html>