<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>异常拍照</title>
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
                var uploaderInput = document.getElementById("uploaderInput");//图片上传按钮
                var uploaderFiles = document.getElementById("uploaderFiles");//图片列表
                var uploadImage = document.getElementById("uploadImage");//上传的图片
                if (uploadImage == null) {
                    alert("所选图片不能为空...");
                    return false;
                }
                var blob = uploadImage.style.backgroundImage;
                blob = blob.substring(5, blob.length - 2);
                //console.log(blob);//"blob:http://localhost:8080/cc116c31-f8f1-47b1-a87b-96d948253495"
                var image = new Image();
                image.crossOrigin = '';
                image.src = blob;
                image.onload = function () {
                    var base64 = getBase64Image(image);
                    console.log(base64);
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
                            removeimg(uploadImage);
                            uploaderInput.value = '';
                            //uploaderFiles.removeChild(uploaderFiles.getElementsByTagName("li")[0]);
                        }
                    });
                };
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


            //删除对象
            function removeimg(obj) {
                $(obj).remove();
                return false;
            }
        })
        ;

    </script>
</head>
<link rel="icon" type="image/x-icon" href="/static/img/favicon.ico">
<body ontouchstart>
<div class="page-hd">
    <h1 class="page-hd-title">
        上传异常信息
    </h1>
    <p class="page-hd-desc">需要加载lrz.min.js压缩插件(未压缩)</p>
</div>

<div class="page-bd-15">
    <div class="weui-cells weui-cells_form">
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">设备名称</label></div>
            <div class="weui-cell__bd">
                <input class="weui-input" placeholder="请输入设备名称" type="text">
            </div>
        </div>

        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">设备部位</label></div>
            <div class="weui-cell__bd">
                <input class="weui-input" placeholder="请输入设备部位" type="text">
            </div>
        </div>


        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">设备内容</label></div>
            <div class="weui-cell__bd">
                <input class="weui-input" placeholder="请输入设备内容" type="text">
            </div>
        </div>

        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">操作人</label></div>
            <div class="weui-cell__bd">
                <input class="weui-input" placeholder="请输入操作人" type="text">
            </div>
        </div>



    </div>
    <br>
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
        <a href="http://www.hanslaser.com/" class="weui-footer__link">大族激光</a>
    </p>
    <p class="weui-footer__text">Copyright &copy; xiaobu</p>
</div>
</body>
<script>
</script>
</html>