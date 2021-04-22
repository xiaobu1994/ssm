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
.flex-demo {
    text-align: center;
    color: #fff;
    background-color: #20b907;
    margin-bottom: 8px;
    border-radius: 4px;
    -webkit-background-clip: padding-box;
}

.dialog-q {
    top: 10px!important;
}
</style>

<body ontouchstart style="background-color: #FBF9FE;">
    <div id="demo">
        <group title="产品信息">
          <!-- <cell title="Vux" value="Cool" is-link></cell> -->
           <x-input title="产品编码" class="weui-cell_vcode" v-model="sn">
            <img slot="right"  class="weui-vcode-img" src="/static/picture/qrcode_demo.png" @click="qrcodeProcess" alt="">
          </x-input>
            <x-input title="机器设备号" :show-clear=false placeholder="" v-model="productNumber"></x-input>
            <x-input title="部件类型" :show-clear=false placeholder="" v-model="type"></x-input>
            <x-input title="供应商" :show-clear=false placeholder="" v-model="supplier"></x-input>
            <x-input title="打标时间" :show-clear=false placeholder="" v-model="createTime"></x-input>
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
                sn:'XGG19081201J',
                productNumber: '挖井机001号',
                supplier: '大族激光',
                type: '类型一',
                banci: '班次1',
                person: '10001',
                remark:"该机器发往于深圳",
                msg: 'Hello World!',
                createTime: '2019-08-12 13:30:00'

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
