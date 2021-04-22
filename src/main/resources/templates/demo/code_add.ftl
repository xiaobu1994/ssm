<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>数据上传</title>
    <link rel="stylesheet" href="/static/dist/vux.min.css">
    <script src="/static/dist/vue.js"></script>
</head>
<link rel="icon" type="image/x-icon" href="/static/img/favicon.ico">
<style>

</style>

<body ontouchstart style="background-color: #FBF9FE;">
<div id="demo">
    <group title="设备信息">
        <!-- <cell title="Vux" value="Cool" is-link></cell> -->
        <x-input title="设备编码" class="weui-cell_vcode" v-model="sn">
            <img slot="right" class="weui-vcode-img" src="/static/picture/qrcode_demo.png" @click="qrcodeProcess"
                 alt="">
        </x-input>
        <x-input title="设备名称" :show-clear=false placeholder="" v-model="productName"></x-input>
    </group>
    <group title="操作信息">
        <x-input title="下机原因" :show-clear=false placeholder="" v-model="partName"></x-input>
        <x-input title="更换备件" :show-clear=false placeholder="" v-model="partType"></x-input>
        <x-input title="操作人员" :show-clear=false placeholder="" v-model="person"></x-input>
    </group>
    <group title="费用信息">
        <x-input title="缸盖" :show-clear=false placeholder="" v-model="ganggai"></x-input>
        <x-input title="涡轮" :show-clear=false placeholder="" v-model="wolun"></x-input>
        <x-input title="电磁阀" :show-clear=false placeholder="" v-model="daicifa"></x-input>
    </group>
    <group title="操作时间">
        <x-input title="上机时间" :show-clear=false placeholder="" v-model="time1"></x-input>
        <x-input title="下机时间" :show-clear=false placeholder="" v-model="time2"></x-input>
    </group>
    <br>
    <x-button @click.native="submitData" type="primary" style="margin-top:5px">提交</x-button>
    <br>
</div>
<div class="Ditumap" style="display: none">
    <div style="margin-bottom:10px;">
        <input id="searchplace" style="width: 550px;" class="easyui-textbox-simple" placeholder="输入搜索关键字" />
        <a id="s_p_search_btn" href="#" class="easyui-linkbutton" style="width: 80px;" iconcls="icon-search">搜索</a>
    </div>
    <div id="searchlist" style="width: 350px; height: 460px; margin-right:10px; float:left;"></div>
    <div style="width:600px;height:460px;border:none; float:left;" id="BaiduDitu"></div>
    <div style="clear:both;"></div>
</div>
<script type="text/javascript" src="/static/js/jquery-2.0.0.min.js"></script>
<script src="/static/dist/components/group/index.min.js"></script>
<script src="/static/dist/components/group/index.min.js"></script>
<script src="/static/dist/components/cell/index.min.js"></script>
<script src="/static/dist/components/x-input/index.min.js"></script>
<script src="/static/dist/components/selector/index.min.js"></script>
<script src="/static/dist/components/x-button/index.min.js"></script>
<script src="/static/dist/components/x-number/index.min.js"></script>
<script src="/static/dist/components/x-textarea/index.min.js"></script>
<script>
    Vue.component('group', vuxGroup);
    Vue.component('cell', vuxCell);
    Vue.component('x-input', vuxXInput);
    Vue.component('selector', vuxSelector);
    Vue.component('x-button', vuxXButton);
    Vue.component('x-number', vuxXNumber);
    Vue.component('x-textarea', vuxXTextarea);


    var v4m = new Vue({
        el: '#demo',
        data: {
            sn: 'XGG19041901J',
            productName: '发动机',
            partName: '拉缸、油脂超标',
            partType: '缸盖、涡轮、电磁阀',
            person: 'admin',
            ganggai: '￥8400',
            wolun: '￥11000',
            daicifa: '￥5000',
            time1: '2019-07-16',
            time2: '2019-07-17',
            msg: 'Hello World!'

        },
        computed: {},
        methods: {
            qrcodeProcess: function () {
                // this.msg = '1111';
                console.log(1111)
            },
            submitData: function (submitType) {
                window.location.href = "/code/toMap";
            }
        },
        created: function () {
        }

    })
</script>

</body>

</html>
