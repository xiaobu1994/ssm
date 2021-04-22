<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <title></title>
    <style media="screen">
        html{
            height: 100%
        }
        body{
            height:100%;
            margin:0;
            padding:0;
        }
        #container{
            height: 100%;
        }
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=e3ZohdqyB0RL98hFOiC29xqh"></script>
</head>
<body>
<div id="container">

</div>
<script type="text/javascript">
    var map = new BMap.Map('container');
    var point = new BMap.Point(116.404,39,915);
    map.centerAndZoom(point,15);
    var geoc = new BMap.Geocoder();
    map.addEventListener("click",function(e){
        var pt = e.point;
        geoc.getLocation(pt, function(rs){
            console.log('rs',rs);
        });
    });
    var local = new BMap.LocalSearch(map, {
        renderOptions:{map: map}
    });
    local.search("酒仙桥");
</script>
</body>
</html>