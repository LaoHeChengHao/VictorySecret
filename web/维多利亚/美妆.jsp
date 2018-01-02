<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>维多利亚的秘密</title>
    <!--网页Logo打开标题-->
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/globe.css">
    <link rel="stylesheet" type="text/css" href="css/style.css" />


</head>
<body >
<div class="wrap">
    <div  id="page">
        <header>
            <!--窗口缩小化时候的Logo显示，点击切换到首页-->
            <section class="container-fluid vs-topNav">
                <a href="维多利亚的秘密.jsp"><img alt="维多利亚的秘密LOGO" src="img/mobileLogo.png"
                                           class="visible-xs mobileLogo"></a>
            </section>
            <section class="container vs-logoWrap">
                <!--Logo界面，点击跳回本页面-->
                <div class="vs-logo hidden-xs">
                    <a href="维多利亚的秘密.jsp"><img alt="维多利亚的秘密LOGO" src="img/VSLogo.png"></a>
                </div>
            </section>
            <nav class="container vs-Mainnav hidden-xs">
                <ul class="vs-navList">
                    <li>
                        <a  href="维多利亚的秘密.jsp">内衣</a>
                    </li>
                    <li>
                        <a  href="美妆.jsp">美妆</a>
                    </li>
                    <li>
                        <a  href="运动.jsp">运动</a>
                    </li>
                    <li>
                        <a  href="新品.jsp">维密PINK</a>
                    </li>
                    <li>
                        <a  href="注册订阅.jsp">订阅</a>
                    </li>
                    <li>
                        <a  href="维密SHOW.jsp">维密秀</a>
                    </li>
                </ul>
            </nav>
        </header>

        <!--动图位置调整，点击切换到对应门店-->
        <section class="container vs-main">
            <div class="row">
                <div class="col-xs-12 hidden-xs">
                    <a href="/Vic-master/Beauty/WebContent/index.jsp" class="homemainKv"><img
                            alt="维多利亚的秘密2017新品上市" src="img/Beauty2.jpg" class="img-responsive"></a>
                </div>
            </div>
        </section>

        <!--在窗口小尺寸的时候显示的图片样式-->
        <section class="container vs-main mobieKv">
            <div class="row visible-xs vs-homepageKV" id="beauty">
                <div class="col-xs-12">
                    <a href="/Vic-master/Beauty/WebContent/index.jsp"><img alt="维多利亚的秘密彩妆,化妆品,香水" src="img/Beauty.jpg"
                                                                                class="img-responsive"></a>
                </div>
            </div>
            <div class="row visible-xs vs-homepageKV" id="sports">
                <div class="col-xs-12">
                    <a href="/Z-master/Victoria/WebContent/index.jsp"><img alt="维多利亚的秘密运动系列,运动内衣" src="img/Sports.jpg"
                                          class="img-responsive"></a>
                </div>
            </div>
            <div class="row visible-xs vs-homepageKV" id="pink">
                <div class="col-xs-12">
                    <a href="/Z-master/Victoria/WebContent/index.jsp"><img alt="维多利亚的秘密PINK" src="img/Pink.jpg"
                                          class="img-responsive"></a>
                </div>
            </div>
        </section>

        <footer>
            <section class="footFUC">
                <div class="container ">
                    <div class="row vs-footerRow">
                        <div class="col-md-2 col-md-push-4 col-xs-12 findStoreBox">
                            <a href="http://192.168.10.110:8080/" class="vs-whiteLink footerStore">Victoria’s Secret合作假日酒店</a>
                        </div>
                        <div class="col-md-2 col-md-push-4 col-xs-12 findStoreBox">
                            <a href="http://192.168.10.144:8080/" class="vs-whiteLink footerStore">Victoria’s Secret合作健身房</a>
                        </div>
                        <div class="col-md-4 col-md-pull-4 col-xs-12">
                            <p>
                                订阅<span class="fabric">Victoria’s Secret</span>电子资讯
                            </p>
                            <!--暂时提交到注册界面，后期需要验证填写邮箱地址-->
                            <form action="注册订阅.jsp" method="post">
                                <fieldset>
                                      <span class="vs-input-text">
                                        <input type="email" name="email" id="vableew" placeholder="邮箱">
                                      </span>
                                    <button type="submit">
                                        <img alt="维多利亚的秘密订阅" src="img/homeInputArrow.png">
                                        <span class="vs-offscreen">Sign Up</span>
                                    </button>
                                </fieldset>
                            </form>
                            <p class="vs-footer14px">
                                获取更多优惠
                            </p>
                        </div>
                        <div class="col-md-4 col-xs-12">
                            <p>
                                关注<span class="fabric">Victoria’s Secret</span>
                            </p>
                            <p>
                                 <span class="vs-footerShare">
                                    <img alt="维多利亚的秘密二维码" src="img/qrcode.png" class="qrcodepic">
                                         <a href="http://weibo.com/p/1006066016404050/home?from=page_100606&amp;mod=TAB&amp;is_all=1#place" class="footerWeibo" target="_blank">
                                    <img alt="维多利亚的秘密微博" src="img/ico_weibo.png"></a>
                                </span>
                                <span class="vs-footerShare">
                                    <img alt="维多利亚的秘密微信" src="img/ico_wechat.png" class="icoWechat footerWechat">
                                </span>
                            </p>
                        </div>
                    </div>
                    <div class="row vs-footerRow2nd">
                        <div class="footer-3 col-xs-12 vs-footer14px vs-footerEmail">
                            <p class="footer-3-p footer-hotline">热线电话：13851896954 </p>
                        </div>
                        <div class="footer-3 col-xs-12 hidden-xs"></div>
                        <div class="footer-3 col-xs-12 privacyLink">
                            <p class="mobilePrivacyLink hidden-xs  col-md-12">
                                <a class="vs-whiteLink footerTerms" href="terms.jsp"
                                   target="_blank">隐私条款</a> <a class="vs-whiteLink footer-aboutus"
                                                               href="aboutus.jsp" >关于我们</a>
                            </p>
                            <!--缩小窗口的时候使用-->
                            <ul class="mobilePrivacyLink visible-xs">
                                <li><a class="vs-whiteLink footerTerms"
                                       href="terms.jsp" target="_blank">隐私条款</a></li>
                                <li><a class="vs-whiteLink footer-aboutus"
                                       href="aboutus.jsp" >关于我们</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <section class="vs-footCopyright">
                <div class="container">
                    Tb128@老何组 版权所有 <br>
                    组员: 拾亿元，壮壮，陈浩，老蔡，小何
                </div>
            </section>
        </footer>

    </div>

</div>


<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/globe.js"></script>
<script src="js/ga.js"></script>
<script src="js/js.cookie.js"></script>
<script src="js/setForm.js"></script>

</body>
</html>