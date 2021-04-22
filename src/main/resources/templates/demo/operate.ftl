<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>下载作业</title>
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
            <img slot="right"  class="weui-vcode-img" src="/static/picture/qrcode_demo.png" @click="qrcodeProcess" alt="">
          </x-input>
            <x-input title="设备名称" :show-clear=false placeholder="" v-model="productName"></x-input>
            <x-input title="设备型号" :show-clear=false placeholder="" v-model="productType"></x-input>
        </group>

        <group title="部件信息">
            <x-input title="部件名称" :show-clear=false placeholder="" v-model="partName"></x-input>
            <x-input title="部件型号" :show-clear=false placeholder="" v-model="partType"></x-input>
        </group>
        <group title="子部件信息1">
            <x-input title="子部件名称" :show-clear=false placeholder="" v-model="subPartName1"></x-input>
            <x-input title="子部件型号" :show-clear=false placeholder="" v-model="subPartType1"></x-input>
            <x-input title="异音" :show-clear=false placeholder="" v-model="parameter11"></x-input>
            <x-input title="泄露" :show-clear=false placeholder="" v-model="parameter12"></x-input>
        </group>

        <group title="子部件信息2">
            <x-input title="子部件名称" :show-clear=false placeholder="" v-model="subPartName2"></x-input>
            <x-input title="子部件型号" :show-clear=false placeholder="" v-model="subPartType2"></x-input>
            <x-input title="温度" :show-clear=false placeholder="" v-model="parameter21"></x-input>
            <x-input title="振动" :show-clear=false placeholder="" v-model="parameter22"></x-input>
        </group>

        <group title="操作信息">
            <x-input title="操作人员" :show-clear=false placeholder="" v-model="person"></x-input>
            <x-textarea :max="255" placeholder="请填写备注" v-model="remark"></x-textarea>
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
                sn:'XGG19041901J',
                productName: '1.6万空气压缩机(VK80-7)',
                productType: '压缩机001',
                partName:'主塔及膨胀机系统',
                partType:'主塔001',
                subPartName1:'膨胀机本体',
                subPartType1:'本体001',
                parameter11:'正常',
                parameter12:'正常',
                subPartName2:'膨胀机轴承',
                subPartType2:'轴承001',
                parameter21:'异常',
                parameter22:'正常',
                person:'admin',
                remark:'该设备有多处数据异常，请重点关注!!!',
                msg: 'Hello World!'

            },
            computed: {
            },
            methods: {
                qrcodeProcess: function () {
                  // this.msg = '1111';
                  console.log(1111)
                }
            },
            created: function() {
            }

        })
        </script>
      
</body>

</html>
