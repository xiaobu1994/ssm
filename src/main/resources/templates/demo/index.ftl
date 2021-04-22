<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>首页</title>
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
.vux-1px-b{
  border-bottom: 0!important;
}
.vux-1px-t{
  border-top:0!important;
  border-bottom:1px solid #e0e0e0;
}
.cbox {
  text-align: center;
}
.cbox-inner {
  padding: 15px 0;
  width: 100%;
  height: 100%;
}
.cname {
  text-transform: capitalize;
}
@font-face {
    font-family: 'iconfont';  /* project id 1197043 */
    src: url('//at.alicdn.com/t/font_1197043_9vwcfo01go8.eot');
    src: url('//at.alicdn.com/t/font_1197043_9vwcfo01go8.eot?#iefix') format('embedded-opentype'),
    url('//at.alicdn.com/t/font_1197043_9vwcfo01go8.woff2') format('woff2'),
    url('//at.alicdn.com/t/font_1197043_9vwcfo01go8.woff') format('woff'),
    url('//at.alicdn.com/t/font_1197043_9vwcfo01go8.ttf') format('truetype'),
    url('//at.alicdn.com/t/font_1197043_9vwcfo01go8.svg#iconfont') format('svg');
}
.demo-icon {
    font-family: 'iconfont', serif;
  font-size:20px;
  color: #04BE02;
}
.demo-icon:before {
  content: attr(icon);
}

.dialog-q {
    top: 10px!important;
}
</style>

<body ontouchstart style="background-color: #FBF9FE;">
    <div id="demo">
        <flexbox wrap="wrap" :gutter="0" class="" style="border: 0 none">
          <flexbox-item :span="1/3" v-for="component in components" class="cbox vux-1px-t" @click.native="go(component.url)">
            <div class="vux-1px-r cbox-inner">
              <span class="demo-icon" v-html="component.icon" :style="{color: component.color}"></span>
              <br>
              <span class="cname">{{component.name}}</span>
            </div>
          </flexbox-item>
        </flexbox>
    </div>

        <script src="/static/dist/store_dashboard.js"></script>
        <script src="/static/dist/components/flexbox/index.min.js"></script>
        <script src="/static/dist/components/flexbox-item/index.min.js"></script>
        <script>
        Vue.component('flexbox', vuxFlexbox);
        Vue.component('flexbox-item', vuxFlexboxItem);

        var v4m = new Vue({
            el: '#demo',
            data: {
               components: components
            },
            computed: {
            },
            watch:{
            },
            methods: {
                go (name) {
                  console.log(name);
                  window.location.href=name;
                }
            },
            created: function() {
            	this.components = components;
            }

        })
        </script>
      
</body>

</html>
