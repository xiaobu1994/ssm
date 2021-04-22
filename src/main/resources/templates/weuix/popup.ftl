<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <link rel="stylesheet" href="/static/weui/css/weui-2.0.css"/>
    <link rel="stylesheet" href="/static/weui/css/weuix.css"/>

    <script src="/static/weui/js/zepto.min.js"></script>
    <script src="/static/weui/js/zepto.weui.js"></script>
    <script>


    </script>
</head>

<body ontouchstart>
<div class="page-hd">
    <h1 class="page-hd-title">
        popup
    </h1>
    <p class="page-hd-desc"></p>
</div>


<div id="full" class='weui-popup__container'>
    <div class="weui-popup__overlay"></div>
    <div class="weui-popup__modal">
        <div class="weui-cell" id="switchMachineText" style="display: none">
            <div class="weui-cell__bd">
                <textarea class="weui-textarea" name="switchMachineText" placeholder="请输入文本(开关机)" rows="3"
                          maxlength="255"></textarea>
                <div class="weui-textarea-counter"><span>0</span>/<i>255</i></div>
            </div>
            <#--<i class="weui-icon-clear" onclick="cleararea(this)"></i>-->
        </div>

        <div class="weui-cell" id="operateSoftText" style="display: none">
            <div class="weui-cell__bd">
                <textarea class="weui-textarea" name="operateSoftText" placeholder="请输入文本(操作软件)" rows="3"
                          maxlength="255"></textarea>
                <div class="weui-textarea-counter"><span>0</span>/<i>255</i></div>
            </div>
            <#--<i class="weui-icon-clear" onclick="cleararea(this)"></i>-->
        </div>

        <div class="weui-cell" id="focusText" style="display: none">
            <div class="weui-cell__bd">
                <textarea class="weui-textarea" name="focusText" placeholder="请输入文本(调激光焦点)" rows="3"
                          maxlength="255"></textarea>
                <div class="weui-textarea-counter"><span>0</span>/<i>255</i></div>
            </div>
            <#--<i class="weui-icon-clear" onclick="cleararea(this)"></i>-->
        </div>


        <div class="weui-cell" id="proofText" style="display: none">
            <div class="weui-cell__bd">
                <textarea class="weui-textarea" name="proofText" placeholder="请输入文本(样品打样)" rows="3"
                          maxlength="255"></textarea>
                <div class="weui-textarea-counter"><span>0</span>/<i>255</i></div>
            </div>
            <#--<i class="weui-icon-clear" onclick="cleararea(this)"></i>-->
        </div>

        <div class="weui-cell" id="knowPartText" style="display: none">
            <div class="weui-cell__bd">
                <textarea class="weui-textarea" name="knowPartText" placeholder="请输入文本(认识配件)" rows="3"
                          maxlength="255"></textarea>
                <div class="weui-textarea-counter"><span>0</span>/<i>255</i></div>
            </div>
            <#--<i class="weui-icon-clear" onclick="cleararea(this)"></i>-->
        </div>

        <a href="javascript:;" class="weui-btn weui-btn_primary close-popup">关闭</a>
    </div>
</div>


<div class="weui-cells__title">您是否会正常开关机</div>
<div class="weui-cells weui-cells_radio">
    <label class="weui-cell weui-check__label" for="x11">
        <div class="weui-cell__bd">
            <p>是</p>
        </div>
        <div class="weui-cell__ft">
            <input class="weui-check" name="switchMachine" value="是" checked id="x11" type="radio">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x12">

        <div class="weui-cell__bd">
            <p>否</p>
        </div>
        <div class="weui-cell__ft">
            <input name="switchMachine" class="weui-check" value="否" id="x12" type="radio">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x13">

        <div class="weui-cell__bd">
            <p>其它</p>
        </div>
        <div class="weui-cell__ft">
            <input name="switchMachine" class="weui-check open-popup" value="其它" id="x13" type="radio"
                   data-target="#full">

            <span class="weui-icon-checked"></span>
        </div>
    </label>
</div>

<div class="weui-cells__title">您是否会软件的基本操作</div>
<div class="weui-cells weui-cells_radio">
    <label class="weui-cell weui-check__label" for="x14">
        <div class="weui-cell__bd">
            <p>是</p>
        </div>
        <div class="weui-cell__ft">
            <input class="weui-check" name="operateSoft" value="是" checked id="x14" type="radio">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x15">

        <div class="weui-cell__bd">
            <p>否</p>
        </div>
        <div class="weui-cell__ft">
            <input name="operateSoft" class="weui-check" value="否" id="x15" type="radio">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x16">

        <div class="weui-cell__bd">
            <p>其它</p>
        </div>
        <div class="weui-cell__ft">
            <input name="operateSoft" class="weui-check open-popup" value="其它" id="x16" type="radio"
                   data-target="#full">

            <span class="weui-icon-checked"></span>
        </div>
    </label>
</div>


<div class="weui-cells__title">您是否会调试激光焦点</div>
<div class="weui-cells weui-cells_radio">
    <label class="weui-cell weui-check__label" for="x17">
        <div class="weui-cell__bd">
            <p>是</p>
        </div>
        <div class="weui-cell__ft">
            <input class="weui-check" name="focus" value="是" checked id="x17" type="radio">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x18">

        <div class="weui-cell__bd">
            <p>否</p>
        </div>
        <div class="weui-cell__ft">
            <input name="focus" class="weui-check" value="否" id="x18" type="radio">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x19">

        <div class="weui-cell__bd">
            <p>其它</p>
        </div>
        <div class="weui-cell__ft">
            <input name="focus" class="weui-check open-popup" value="其它" id="x19" type="radio" data-target="#full">

            <span class="weui-icon-checked"></span>
        </div>
    </label>
</div>

<div class="weui-cells__title">您是否会样品打样</div>
<div class="weui-cells weui-cells_radio">
    <label class="weui-cell weui-check__label" for="x20">
        <div class="weui-cell__bd">
            <p>是</p>
        </div>
        <div class="weui-cell__ft">
            <input class="weui-check" name="proof" value="是" checked id="x20" type="radio">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x21">

        <div class="weui-cell__bd">
            <p>否</p>
        </div>
        <div class="weui-cell__ft">
            <input name="proof" class="weui-check" value="否" id="x21" type="radio">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x22">

        <div class="weui-cell__bd">
            <p>其它</p>
        </div>
        <div class="weui-cell__ft">
            <input name="proof" class="weui-check open-popup" value="其它" id="x22" type="radio" data-target="#full">

            <span class="weui-icon-checked"></span>
        </div>
    </label>
</div>

<div class="weui-cells__title">您是否初步认识配件</div>
<div class="weui-cells weui-cells_radio">
    <label class="weui-cell weui-check__label" for="x23">
        <div class="weui-cell__bd">
            <p>是</p>
        </div>
        <div class="weui-cell__ft">
            <input class="weui-check" name="knowPart" value="是" checked id="x23" type="radio">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x24">

        <div class="weui-cell__bd">
            <p>否</p>
        </div>
        <div class="weui-cell__ft">
            <input name="knowPart" class="weui-check" value="否" id="x24" type="radio">
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label" for="x25">

        <div class="weui-cell__bd">
            <p>其它</p>
        </div>
        <div class="weui-cell__ft">
            <input name="knowPart" class="weui-check open-popup" value="其它" id="x25" type="radio" data-target="#full">

            <span class="weui-icon-checked"></span>
        </div>
    </label>
</div>

<a href="javascript:;" id="submit_button" class="weui-btn weui-btn_primary">默认按钮绿色</a>

<script>
    $(function () {
        //$("#full").popup();
    });

    //清空textarea
    function cleararea(obj) {
        $(obj).prev().find('.weui-textarea').val("");
        return false;
    }


    //提交按钮
    $("#submit_button").click(function () {
        var switchMachine,operateSoft,focus,knowPart;
        var temp=$("textarea[name='switchMachineText']").val();//临时变量

        //开关机
        if(temp===''){
            switchMachine=$("input[name='switchMachine']:checked").val();
        }else {
            switchMachine=temp;
        }
        //开关机
        temp=$("textarea[name='operateSoftText']").val();
        if(temp===''){
            operateSoft=$("input[name='operateSoft']:checked").val();
        }else {
            operateSoft=temp;
        }

        //调焦
        temp=$("textarea[name='knowPartText']").val();
        if(temp===''){
            knowPart=$("input[name='focus']:checked").val();
        }else {
            knowPart=temp;
        }

        //
        temp=$("textarea[name='proofText']").val();
        if(temp===''){
            proof=$("input[name='focus']:checked").val();
        }else {
            proof=temp;
        }


        temp=$("textarea[name='focusoftText']").val();
        if(temp===''){
            focus=$("input[name='focus']:checked").val();
        }else {
            focus=temp;
        }
        alert(switchMachine);
    });

    //开关机
    $("#x11").click(function () {
        $("textarea[name='switchMachineText']").val("");
    });

    $("#x12").click(function () {
        $("textarea[name='switchMachineText']").val("");
    });


    $("#x13").click(function () {
        document.getElementById("switchMachineText").style.display = 'block';
        document.getElementById("operateSoftText").style.display = 'none';
        document.getElementById("focusText").style.display = 'none';
        document.getElementById("proofText").style.display = 'none';
    });


    //操作软件
    $("#x14").click(function () {
        $("textarea[name='operateSoftText']").val("");
    });

    $("#x15").click(function () {
        $("textarea[name='operateSoftText']").val("");
    });

    $("#x16").click(function () {
        document.getElementById("operateSoftText").style.display = 'block';
        document.getElementById("switchMachineText").style.display = 'none';
        document.getElementById("focusText").style.display = 'none';
        document.getElementById("proofText").style.display = 'none';
    });


    //调激光焦点
    $("#x17").click(function () {
        $("textarea[name='focusText']").val("");
    });

    $("#x18").click(function () {
        $("textarea[name='focusText']").val("");
    });

    $("#x19").click(function () {
        document.getElementById("operateSoftText").style.display = 'none';
        document.getElementById("switchMachineText").style.display = 'none';
        document.getElementById("focusText").style.display = 'block';
        document.getElementById("proofText").style.display = 'none';
    });


    $("#x20").click(function () {
        $("textarea[name='focusText']").val("");
    });

    $("#x21").click(function () {
        $("textarea[name='focusText']").val("");
    });

    $("#x22").click(function () {
        document.getElementById("proofText").style.display = 'block';
        document.getElementById("operateSoftText").style.display = 'none';
        document.getElementById("switchMachineText").style.display = 'none';
        document.getElementById("focusText").style.display = 'none';
    });

    $("#x23").click(function () {
        $("textarea[name='knowPartfText']").val("");
    });

    $("#x24").click(function () {
        $("textarea[name='knowPartfText']").val("");
    });

    $("#x25").click(function () {
        document.getElementById("knowPartfText").style.display = 'block';
        document.getElementById("proofText").style.display = 'none';
        document.getElementById("operateSoftText").style.display = 'none';
        document.getElementById("switchMachineText").style.display = 'none';
        document.getElementById("focusText").style.display = 'none';
    });

</script>

<br>
<br>
<div class="weui-footer weui-footer_fixed-bottom">
    <p class="weui-footer__links">
        <a href="../index.html" class="weui-footer__link">WeUI首页</a>
    </p>
    <p class="weui-footer__text">Copyright &copy; Yoby</p>
</div>
</body>
</html>