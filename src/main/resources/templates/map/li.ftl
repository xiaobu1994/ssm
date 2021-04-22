<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
 
<div class="con">
            <span>今天是：</span><span><input type="text" id="tresult"/></span>
            <br>
           
    <ul id="tcontent">
                    
        <li>星期日</li>
                   
        <li>星期一</li>
                   
        <li>星期二</li>
                   
        <li>星期三</li>
                   
        <li>星期四</li>
                   
        <li>星期五</li>
                   
        <li>星期六</li>
               
    </ul>
            <br>
       
</div>
</body>
<script type="text/javascript" src="/static/js/jquery-2.0.0.min.js"></script>
        
<script type="text/javascript">
    $(document).ready(function () {

        //方法一：
/*
        $("ul li").each(function () {
            $(this).click(function () {
                alert($(this).text());
                $("#tresult").val($(this).text());
            })
        });
*/

        //方法二：
        $('li').click(function () {
            alert($(this).text());
            $("#tresult").val($(this).text());
        });


        //方法三：
/*        $("ul").on("click", "li", function () {
            $("#tresult").val($(this).text());
        })*/
    })
</script>
</html>