<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layer-更懂你的web弹窗解决方案</title>

    <style>
        html {
            background-color: #E3E3E3;
            font-size: 14px;
            color: #000;
            font-family: '微软雅黑'
        }

        a, a:hover {
            text-decoration: none;
        }

        pre {
            font-family: '微软雅黑'
        }

        .box {
            padding: 20px;
            background-color: #fff;
            margin: 50px 100px;
            border-radius: 5px;
        }

        .box a {
            padding-right: 15px;
        }

        #about_hide {
            display: none
        }

        .layer_text {
            background-color: #fff;
            padding: 20px;
        }

        .layer_text p {
            margin-bottom: 10px;
            text-indent: 2em;
            line-height: 23px;
        }

        .button {
            display: inline-block;
            *display: inline;
            *zoom: 1;
            line-height: 30px;
            padding: 0 20px;
            background-color: #56B4DC;
            color: #fff;
            font-size: 14px;
            border-radius: 3px;
            cursor: pointer;
            font-weight: normal;
        }

        .photos-demo img {
            width: 200px;
        }
    </style>

    <script src="/static/js/jquery-2.0.0.min.js"></script>
    <script src="/static/layer/layer.js"></script>
</head>
<body>
<div class="box">
<pre>
 @Name：layer-v<script>document.write(layer.v)</script> 弹层组件说明
 @Author：贤心
 @Site：<a href="http://layer.layui.com/" target="_blank">http://layer.layui.com/</a>


<strong>【注意事项】</strong>
一、使用时，请把文件夹layer整个放置在您站点的任何一个目录，只需引入layer.js即可，除jQuery外，其它文件无需再引入。
二、如果您的js引入是通过合并处理或者您不想采用layer自动获取的绝对路径，您可以通过layer.config()来配置（详见官网API页）
三、jquery需1.8+
四、更多使用说明与演示，请参见layer官网。
五、使用时请务必保留来源，请勿用于违反我国法律法规的web平台。
六、layer遵循MIT开源协议，将永久性提供无偿服务。
</pre>
</div>

<div class="box" style="text-align:center">
    <a href="http://layer.layui.com/" target="_blank">更多示例</a>
    <a href="http://www.layui.com/doc/modules/layer.html" target="_blank">使用文档</a>
    <a href="http://fly.layui.com/" id="suggest">交流反馈</a>
    <a href="javascript:;" id="about">关于</a>
</div>

<script>
    ;!function () {


//页面一打开就执行，放入ready是为了layer所需配件（css、扩展模块）加载完毕
        layer.ready(function () {
            alert($(window).width());
            alert($(window).height());
            layer.open({
                type: 2,
                title: '欢迎页',
                maxmin: true,
                area: ['980px', '1000px'],
                content: 'http://172.18.9.166:8899/map/toMap',
                end: function () {
                    layer.tips('Hi', '#about', {tips: 1})
                }
            });
        });

//关于
        $('#about').on('click', function () {
            layer.alert(layer.v + ' - 贤心出品 sentsin.com');
        });

    }();
</script>
</body>
</html>