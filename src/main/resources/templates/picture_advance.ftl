<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>图片上传(改进版)</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <link rel="stylesheet" href="/static/weui/css/weui-2.0.css"/>
    <link rel="stylesheet" href="/static/weui/css/weuix.css"/>

    <script src="/static/weui/js/jquery-2.1.4.js"></script>
    <script src="/static/weui/js/zepto.min.js"></script>
    <script src="/static/weui/js/zepto.weui.js"></script>
    <script src="/static/weui/js/lrz.min.js"></script>
    <script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script src="https://res.wx.qq.com/open/libs/weuijs/1.0.0/weui.min.js"></script>
</head>
<link rel="icon" type="image/x-icon" href="/static/img/favicon.ico">
<body ontouchstart>
<div class="page-hd">
    <h1 class="page-hd-title">
        图片上传和预览
    </h1>
    <p class="page-hd-desc">需要加载lrz.min.js压缩插件(未压缩)</p>
</div>

<div class="page-bd-15" id="form">
    <div class="weui-uploader">
        <div class="weui-uploader__hd">
            <p class="weui-uploader__title">单图压缩上传,使用lrz压缩</p>
            <div class="weui-uploader__info">0/2</div>
        </div>
        <div class="weui-uploader__bd">
            <ul class="weui-uploader__files">
            </ul>
            <div class="weui-uploader__input-box">
                <input class="weui-uploader__input" id="uploaderInput" accept="image/*" multiple="" type="file"
                       onchange="uploadimg(this)">
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


    <div class="weui-gallery" style="display: none">
        <span class="weui-gallery__img"></span>
        <div class="weui-gallery__opr">
        </div>
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
    var objectURL;//blob:http://localhost:8899/d8ae2371-30ba-4e5c-883d-0e10b3b5b0ed
    var $uploaderInput = $("#uploaderInput"); //上传按钮+
    var $galleryImg = $(".weui-gallery__img");//相册图片地址
    var $gallery = $(".weui-gallery");

    function removeimg(obj) {
        $(obj).remove();
        return false;
    }

    function uploadimg(obj) {
        lrz(obj.files[0], {width: 750, fieldName: "file"}).then(function (data) {
            var base64 = data.base64;
            var blob = base64ToBlob(base64);
            objectURL = window.URL.createObjectURL(blob);
            $(obj).parent().prev().html('<li onclick="removeimg(this)" id="image" class="weui-uploader__file" style="background-image:url(' + objectURL + ')"><input value="' + objectURL + '"  type="hidden"  name="file" /></li>');
        }).then(function (data) {

        }).catch(function (err) {
            console.log(err);
        });
    }

    $('#submit_button').on('click', function () {
        $.ajax({
            url: "/picture/uploadByFile",
            type: 'post',
            data: {'objectURL':objectURL},
            cache: false,
            dataType: 'text',
            async: false, //默认为true 异步
            error: function () {
                alert('系统错误');
                error = true;
            },
            success: function (data) {
                alert(data);
            }
        });
    });


    //base64转blob
    function base64ToBlob(dataurl) {
        var arr = dataurl.split(','), mime = arr[0].match(/:(.*?);/)[1], bstr = atob(arr[1]), n = bstr.length,
            u8arr = new Uint8Array(n);
        while (n--) {
            u8arr[n] = bstr.charCodeAt(n);
        }
        return new Blob([u8arr], {type: mime});
    }

</script>
</html>