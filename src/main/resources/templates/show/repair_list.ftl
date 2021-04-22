<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>维修记录</title>
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
            <cell title="产品编码" value="XGG19081201J"></cell>
            <cell title="机器设备号" value="30W进口IPG激光器"></cell>
            <cell title="部件类型" value="大族激光"></cell>
            <cell title="供应商" value="admin"></cell>
        </group>
        <group title="操作信息">
            <cell title="打标时间" value="2019-08-12 15:21:00"></cell>
            <cell title="操作人员" value="张三"></cell>
            <cell title="打标时间" value="2019-08-12 17:21:00"></cell>
            <cell title="录入时间" value="工程师张三"></cell>
            <cell title="备注" value="该机器发往深圳"></cell>
        </group>
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
