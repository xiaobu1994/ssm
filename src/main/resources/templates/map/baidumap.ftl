<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>百度地图</title>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=e3ZohdqyB0RL98hFOiC29xqh"></script>
    <script type="text/javascript" src="/static/js/jquery-2.0.0.min.js"></script>

</head>
<body class="easyui-layout">
<div class="Ditumap">
    <div style="margin-bottom:10px;">
        <input id="searchplace" style="width: 300px;" class="easyui-textbox-simple" placeholder="输入搜索关键字"/>
        <a id="s_p_search_btn" href="#" class="easyui-linkbutton" style="width: 75px;" iconcls="icon-search">搜索</a>
    </div>
    <div style="width:375px;height:300px;border:none; float:left;display: block" id="BaiduDitu"></div>
    <div id="searchlist" style="width: 375px; height: 300px; margin-right:10px; float:left;display: block"></div>
    <div style="clear:both;"></div>
</div>
</body>
<script type="text/javascript">
    $(function () {
        // alert($(window).width());
        //alert($(window).height());
        initMap();//创建和初始化地图
        createSearch();
        createAutocomlete();
        $("#s_p_search_btn").click(function () {
            searchPlace($("#searchplace").val());
        });
    });

    function initMap() {
        createMap();//创建地图
        setMapEvent();//设置地图事件
    }

    //创建地图函数：
    function createMap() {
        var map = new BMap.Map("BaiduDitu");//在百度地图容器中创建一个地图
        map.centerAndZoom('深圳', 11);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
        var point = new BMap.Point(116.404, 39, 915);
        map.centerAndZoom(point, 15);
        var geoc = new BMap.Geocoder();
        map.addEventListener("click", function (e) {
            var pt = e.point;
            geoc.getLocation(pt, function (rs) {
                console.log('rs', rs);
                alert('地址:' + rs.address);
            });
        });
    }

    //地图事件设置函数：
    function setMapEvent() {
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }

    function createSearch() {
        var map = window.map;
        window.local = new BMap.LocalSearch(map,
            {
                renderOptions: {map: map, panel: "searchlist"}
            });
    }

    function createAutocomlete() {
        var map = window.map;
        var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
            {
                "input": "searchplace",
                "location": map
            });
        ac.addEventListener("onconfirm", function (e) {    //鼠标点击下拉列表后的事件
            var _value = e.item.value;
            var addr = _value.business + _value.province + _value.city + _value.district + _value.street + _value.streetNumber;
            searchPlace(addr);
        });
    }

    //搜索
    function searchPlace(value) {
        window.local.search(value);
    }
</script>
</html>