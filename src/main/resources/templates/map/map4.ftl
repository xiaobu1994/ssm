<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        body, html{width: 100%;height: 100%; margin:0;font-family:"微软雅黑";}
        #l-map{height:300px;width:100%;}
        #r-result{width:100%;}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=E4805d16520de693a3fe707cdc962045"></script>
    <title>本地搜索的结果面板</title>
</head>
<body>
<div id="l-map"></div>
<div id="r-result"></div>
</body>
</html>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("l-map");            // 创建Map实例
    map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
    var local = new BMap.LocalSearch(map, {
        renderOptions: {map: map, panel: "r-result"}
    });
    local.search("大族激光大厦");
</script>
