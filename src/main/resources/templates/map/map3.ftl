<html lang="">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
    <style type="text/css">
        body, html, #allmap {
            width: 100%;
            height: 100%;
            margin: 0;
            font-family: "微软雅黑", serif;
        }

        #l-map {
            height: 300px;
            width: 100%;
        }

        #r-result {
            width: 100%;
            font-size: 14px;
            line-height: 20px;
        }
    </style>
    <script type="text/javascript" src="/static/js/jquery-2.0.0.min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=e3ZohdqyB0RL98hFOiC29xqh"></script>
    <title>本地搜索的数据接口</title>
</head>
<body>
<div id="l-map"></div>
<div id="r-result">
    <input type="text" id="customAddress" size="20" onchange="changeAddress()" style="width:150px;"/>
</div>
</body>
</html>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("l-map");
    map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);

    var options = {
        onSearchComplete: function (results) {
            // 判断状态是否正确
            if (local.getStatus() === BMAP_STATUS_SUCCESS) {
                console.log(results.YA);
               var totalPage= results.getNumPages();//总页数
                var currentPage = results.getPageIndex();//当前页码
                var currentSize=results.getCurrentNumPois();
                alert('共'+totalPage + '页,在第' + currentPage+"页,当前页共"+currentSize+"条数据");

/*                var str = '<div style="font: 12px arial, sans-serif; border: 1px solid rgb(153, 153, 153);"><div style="background: rgb(255, 255, 255);"><ul style="list-style: none; padding: 0px; margin: 0px;">';
                var s = [];
                for (var i = 0; i < results.getCurrentNumPois(); i++) {
                    s.push("<li style=\"margin: 2px 0px; padding: 0px 5px 5px 0px; cursor: pointer; overflow: hidden; line-height: 17px;\"><div style=\"zoom: 1; overflow: hidden; padding: 0px 5px; background-color: rgb(240, 240, 240);\"><div style=\"line-height:20px;font-size:12px;\"><span style=\"color:#00c;\">" + results.getPoi(i).title + "</span></div><div style=\"padding:2px 0;line-height:18px;*zoom:1;overflow:hidden;\"><b style=\"float:left;font-weight:bold;*zoom:1;overflow:hidden;padding-right:5px;*margin-right:-3px;\">地址:</b><span style=\"color:#666;display:block;zoom:1;overflow:hidden;\">" + results.getPoi(i).address + "</span></div></div></li>\n")
                }

                str += s.join("");
                str += '</ul></div>';*/
                var str = '<div style="font: 12px arial, sans-serif; border: 1px solid rgb(153, 153, 153);"><div style="background: rgb(255, 255, 255);"><ul style="list-style: none; padding: 0px; margin: 0px;">';
                var s = [];
                s.push("<li style=\"margin: 2px 0px; padding: 0px 5px 5px 0px; cursor: pointer; overflow: hidden; line-height: 17px;\"><div style=\"zoom: 1; overflow: hidden; padding: 0px 5px; background-color: rgb(240, 240, 240);\"><div style=\"line-height:20px;font-size:12px;\"><span style=\"color:#00c;\">" + results.getPoi(0).title + "</span></div><div style=\"padding:2px 0;line-height:18px;*zoom:1;overflow:hidden;\"><b style=\"float:left;font-weight:bold;*zoom:1;overflow:hidden;padding-right:5px;*margin-right:-3px;\">地址:</b><span style=\"color:#666;display:block;zoom:1;overflow:hidden;\">" + results.getPoi(0).address + "</span></div></div></li>\n")
                str += s.join("");
                str += '</ul></div>';
                document.getElementById("r-result").innerHTML = str;
                $('li').on('click', function () {
                    alert($(this).text());
                })
            }
        }
    };
    var local = new BMap.LocalSearch(map, options);


    function changeAddress() {
        var customAddress = $("#customAddress").val().trim();
        local.search(customAddress);
    }

</script>
