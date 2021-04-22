<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>点检信息</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <link rel="stylesheet" href="/static/weui/css/weui-2.0.css"/>
    <link rel="stylesheet" href="/static/weui/css/weuix.css"/>
    <script src="/static/weui/js/zepto.min.js"></script>

    <script>

        $(function () {
            $('.collapse .js-category').click(function () {
                $parent = $(this).parent('li');
                if ($parent.hasClass('js-show')) {
                    //收起
                    $parent.removeClass('js-show');
                    $(this).children('i').removeClass('icon-35').addClass('icon-74');
                } else {
                    //展开
                    $parent.siblings().removeClass('js-show');
                    $parent.addClass('js-show');
                    $(this).children('i').removeClass('icon-74').addClass('icon-35');
                    $parent.siblings().find('i').removeClass('icon-35').addClass('icon-74');
                }
            });


        });

    </script>
</head>
<link rel="icon" type="image/x-icon" href="/static/img/favicon.ico">
<body ontouchstart>
<div class="contianer page-bg">
    <div class="page-bd">
        <ul class="collapse">
            <li>
                <div class="weui-flex js-category">
                    <div class="weui-flex__item">1.6万空气压缩机(VK80-7)</div>
                    <i class="icon icon-74"></i>
                </div>
                <div class="weui-cells page-category-content">
                    <div class="page-category js-categoryInner">

                        <div class="weui-flex js-category">
                            <div class="weui-flex__item">主塔及膨胀机系统</div>
                            <i class="icon icon-35"></i>
                        </div>

                        <div class="weui-cells page-category-content">
                            <div class="page-category js-categoryInner">
                                <div class="weui-flex js-category">
                                    <div class="weui-flex__item">膨胀机整体</div>
                                    <i class="icon icon-35"></i>
                                </div>
                            </div>
                        </div>

                        <div class="page-category js-categoryInner">
                            <div class="weui-cells page-category-content">
                                <a class="weui-cell weui-cell_access" href="demo/base2.html">
                                    <div class="weui-cell__bd">
                                        <p>异音(正常)</p>
                                    </div>
                                    完成
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access" href="demo/base2.html">
                                    <div class="weui-cell__bd">
                                        <p>泄露(正常)</p>
                                    </div>
                                    完成
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div>


                        <div class="page-category js-categoryInner">
                            <div class="weui-flex js-category">
                                <div class="weui-flex__item">膨胀机轴承</div>
                                <i class="icon icon-35"></i>
                            </div>
                        </div>
                        <div class="page-category js-categoryInner">
                            <div class="weui-cells page-category-content">
                                <a class="weui-cell weui-cell_access" href="demo/base2.html">
                                    <div class="weui-cell__bd">
                                        <p>温度(正常)</p>
                                    </div>
                                    完成
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access" href="demo/base2.html">
                                    <div class="weui-cell__bd">
                                        <p>振动(正常)</p>
                                    </div>
                                    完成
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div>

                        <div class="page-category js-categoryInner">
                            <div class="weui-flex js-category">
                                <div class="weui-flex__item">膨胀机油泵(含电机)</div>
                                <i class="icon icon-35"></i>
                            </div>
                        </div>
                        <div class="page-category js-categoryInner">
                            <div class="weui-cells page-category-content">
                                <a class="weui-cell weui-cell_access" href="demo/base2.html">
                                    <div class="weui-cell__bd">
                                        <p>油压(正常)</p>
                                    </div>
                                    完成
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access" href="demo/base2.html">
                                    <div class="weui-cell__bd">
                                        <p>温度(正常)</p>
                                    </div>
                                    完成
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div>

                        <!-- 膨胀机油泵（含电机）-->
                        <div class="page-category js-categoryInner">
                            <div class="weui-flex js-category">
                                <div class="weui-flex__item">膨胀机油泵(含电机)</div>
                                <i class="icon icon-35"></i>
                            </div>
                        </div>
                        <div class="page-category js-categoryInner">
                            <div class="weui-cells page-category-content">
                                <a class="weui-cell weui-cell_access" href="demo/base2.html">
                                    <div class="weui-cell__bd">
                                        <p>油压(正常)</p>
                                    </div>
                                    完成
                                    <div class="weui-cell__ft"></div>
                                </a>
                                <a class="weui-cell weui-cell_access" href="demo/base2.html">
                                    <div class="weui-cell__bd">
                                        <p>温度(正常)</p>
                                    </div>
                                    完成
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div> <!-- end 膨胀机油泵（含电机）-->

                        <!-- 膨胀机油温-->
                        <div class="page-category js-categoryInner">
                            <div class="weui-flex js-category">
                                <div class="weui-flex__item">膨胀机油温</div>
                                <i class="icon icon-35"></i>
                            </div>
                        </div>
                        <div class="page-category js-categoryInner">
                            <div class="weui-cells page-category-content">
                                <a class="weui-cell weui-cell_access" href="demo/base2.html">
                                    <div class="weui-cell__bd">
                                        <p>温度(正常)</p>
                                    </div>
                                    完成
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div> <!-- end 膨胀机油温-->

                        <!-- 膨胀机油温-->
                        <div class="page-category js-categoryInner">
                            <div class="weui-flex js-category">
                                <div class="weui-flex__item">膨胀机油箱</div>
                                <i class="icon icon-35"></i>
                            </div>
                        </div>
                        <div class="page-category js-categoryInner">
                            <div class="weui-cells page-category-content">
                                <a class="weui-cell weui-cell_access" href="demo/base2.html">
                                    <div class="weui-cell__bd">
                                        <p>油位(正常)</p>
                                    </div>
                                    完成
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div> <!-- end 膨胀机油温-->

                        <!-- 膨胀机油温-->
                        <div class="page-category js-categoryInner">
                            <div class="weui-flex js-category">
                                <div class="weui-flex__item">工艺参数</div>
                                <i class="icon icon-35"></i>
                            </div>
                        </div>
                        <div class="page-category js-categoryInner">
                            <div class="weui-cells page-category-content">
                                <a class="weui-cell weui-cell_access" href="demo/base2.html">
                                    <div class="weui-cell__bd">
                                        <p>示值(正常)</p>
                                    </div>
                                    完成
                                    <div class="weui-cell__ft"></div>
                                </a>
                            </div>
                        </div> <!-- end 膨胀机油温-->
                    </div><!-- end js-categoryInner-->
                </div>
            </li>


        </ul>
    </div>


    <div class="weui-footer weui-footer_fixed-bottom">
        <p class="weui-footer__links">
            <a href="http://www.hanslaser.com/" class="weui-footer__link">大族激光</a>
        </p>
        <p class="weui-footer__text">Copyright &copy; xiaobu</p>
    </div>
</div>
</body>
</html>
