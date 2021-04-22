<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>维修服务</title>
    <link rel="stylesheet" href="/static/dist/vux.min.css">
    <script src="/static/dist/vue.js"></script>
</head>
<link rel="icon" type="image/x-icon" href="/static/img/favicon.ico">
<style>
    .flex-demo {
        text-align: center;
        color: #fff;
        background-color: #20b907;
        margin-bottom: 8px;
        border-radius: 4px;
        -webkit-background-clip: padding-box;
    }

    .dialog-q {
        top: 10px !important;
    }
</style>

<body ontouchstart style="background-color: #FBF9FE;">
<div id="demo">
    <group title="产品信息">
        <!-- <cell title="Vux" value="Cool" is-link></cell> -->
        <x-input title="产品编码" class="weui-cell_vcode" v-model="sn">
            <img slot="right" class="weui-vcode-img" src="/static/picture/qrcode_demo.png" @click="qrcodeProcess"
                 alt="">
        </x-input>
        <x-input title="产品名称" :show-clear=false placeholder="" v-model="productName"></x-input>
    </group>

    <group title="客户信息">
        <x-input title="客户名称" :show-clear=false placeholder="" v-model="customName"></x-input>
        <x-input title="联系人" :show-clear=false placeholder="" v-model="name"></x-input>
        <x-input title="联系方式" :show-clear=false placeholder="" v-model="phone"></x-input>
    </group>
    <group title="维修信息">
        <x-input title="维修工程师" :show-clear=false placeholder="" v-model="engineer"></x-input>
        <x-textarea :max="255" placeholder="请填写维修内容" v-model="remark"></x-textarea>
    </group>
    <br>
    <x-button @click.native="" type="primary" style="margin-top:5px">提交</x-button>
    <br>
</div>
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
            productName: '30W进口IPG激光器',
            specification: '分体机',
            customName: '大族激光',
            phone: "18075XXX728",
            name: 'admin',
            engineer: '工程师李四',
            remark: "配件磨损需要改换配件",
            msg: 'Hello World!'

        },
        computed: {},
        methods: {
            qrcodeProcess: function () {
                // this.msg = '1111';
                console.log(1111)
            }
        },
        created: function () {
        }

    })
</script>

</body>

</html>
