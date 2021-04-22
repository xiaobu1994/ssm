<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>零件信息</title>
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
        <group title="零件信息">
            <cell title="零件编码" value="XGG19041901J"></cell>
            <cell title="零件名称" value="发动机"></cell>
        </group>
        <group title="操作信息">
            <cell title="下机原因" value="拉杆、油脂超标"></cell>
            <cell title="更换配件" value="缸盖、涡轮、电磁阀"></cell>
            <cell title="操作人" value="admin"></cell>
            <cell title="上机时间" value="2019-07-16"></cell>
            <cell title="下机时间" value="2019-07-17"></cell>
        </group>
        <group title="费用信息">
            <cell title="缸盖" value="￥8400"></cell>
            <cell title="涡轮" value="￥11000"></cell>
            <cell title="电磁阀" value="￥5000"></cell>
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
