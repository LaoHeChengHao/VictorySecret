
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>维多利亚的秘密</title>
    <link rel="shortcut icon" href="/维多利亚/img/logo.png" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="/维多利亚/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/维多利亚/css/globe.css" />
    <link rel="stylesheet" type="text/css" href="/维多利亚/css/style.css" />
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<div class="wrap">

    <div id="page">
        <header>
            <section class="container-fluid vs-topNav">
                <a href="/维多利亚/维多利亚的秘密.jsp"><img alt="维多利亚的秘密LOGO" src="/维多利亚/img/mobileLogo.png" class="visible-xs mobileLogo"/></a>
            </section>
            <section class="container vs-logoWrap">
                <div class="vs-logo hidden-xs">
                    <a href="/维多利亚/维多利亚的秘密.jsp"><img alt="维多利亚的秘密LOGO" src="/维多利亚/img/VSLogo.png" /></a>
                </div>
            </section>
            <nav class="container vs-Mainnav hidden-xs">
                <ul class="vs-navList">
                    <li>
                        <a  href="/维多利亚/维多利亚的秘密.jsp">内衣</a>
                    </li>
                    <li>
                        <a  href="/维多利亚/美妆.jsp">美妆</a>
                    </li>
                    <li>
                        <a  href="/维多利亚/运动.jsp">运动</a>
                    </li>
                    <li>
                        <a  href="/维多利亚/新品.jsp">维密PINK</a>
                    </li>
                    <li>
                        <a  href="/维多利亚/注册订阅.jsp">订阅</a>
                    </li>
                    <li>
                        <a  href="/维多利亚/维密SHOW.jsp">维密秀</a>
                    </li>
                </ul>
            </nav>
        </header>
        <section class="container ">
                <div class="vs-contentPage">

                    <div class="row vs-popForm" style="margin-top:0">
                        <div class="col-xs-12 text-center successCopy">
                            您的会员账号激活成功！
                        </div>
                        <div class="row vs-popForm text-center"  style="padding-bottom:140px">
                            <a href="/维多利亚/维多利亚的秘密.jsp"><button  class="vs-btn backtohome">返回首页</button></a>
                        </div>
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
                            <form action="/维多利亚/注册订阅.jsp" method="post">
                                <fieldset>
                                      <span class="vs-input-text">
                                        <input type="email" name="email" id="vableew" placeholder="邮箱">
                                      </span>
                                    <button type="submit">
                                        <img alt="维多利亚的秘密订阅" src="/维多利亚/img/homeInputArrow.png">
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
                                    <img alt="维多利亚的秘密二维码" src="/维多利亚/img/qrcode.png" class="qrcodepic">
                                         <a href="http://weibo.com/p/1006066016404050/home?from=page_100606&amp;mod=TAB&amp;is_all=1#place" class="footerWeibo" target="_blank">
                                    <img alt="维多利亚的秘密微博" src="/维多利亚/img/ico_weibo.png"></a>
                                </span>
                                <span class="vs-footerShare">
                                    <img alt="维多利亚的秘密微信" src="/维多利亚/img/ico_wechat.png" class="icoWechat footerWechat">
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
                                <a class="vs-whiteLink footerTerms" href="/维多利亚/terms.jsp"
                                   target="_blank">隐私条款</a> <a class="vs-whiteLink footer-aboutus"
                                                               href="/维多利亚/aboutus.jsp" >关于我们</a>
                            </p>
                            <!--缩小窗口的时候使用-->
                            <ul class="mobilePrivacyLink visible-xs">
                                <li><a class="vs-whiteLink footerTerms"
                                       href="/维多利亚/terms.jsp" target="_blank">隐私条款</a></li>
                                <li><a class="vs-whiteLink footer-aboutus"
                                       href="/维多利亚/aboutus.jsp" >关于我们</a></li>
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

<script src="/维多利亚/js/jquery.min.js"></script>
<script src="/维多利亚/js/bootstrap.min.js"></script>
<script src="/维多利亚/js/ga.js"></script>

</body>
</html>
