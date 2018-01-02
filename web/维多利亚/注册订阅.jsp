
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>订阅注册</title>
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/globe.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


</head>
<body >
<div class="wrap">

    <div id="page">
        <header>
            <section class="container-fluid vs-topNav">
                <a href="维多利亚的秘密.jsp"><img alt="维多利亚的秘密LOGO" src="img/mobileLogo.png" class="visible-xs mobileLogo"/></a>
            </section>
            <section class="container vs-logoWrap">
                <div class="vs-logo hidden-xs">
                    <a href="维多利亚的秘密.jsp"><img alt="维多利亚的秘密LOGO" src="img/VSLogo.png" /></a>
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
        <section class="container ">
            <div class="vs-contentPage">
                <div class="row vs-vMiddle">
                    <div class="col-sm-6 col-sm-push-3 col-xs-12">
                        <h3>订阅官方电子通讯</h3>
                        <p class="text-center" style="padding-bottom:35px">抢先获取<span class="fabric">Victoria's Secret</span>最新优惠,<br />
                            &nbsp;&nbsp;&nbsp;了解更多新品、门店活动及开业信息。
                        </p>
                    </div>
                </div>
                <div class="formWrap">
                    <form action="/servlet/UserServlet?method=addUser" method="post">
                    <div class="row vs-popForm" style="margin-top:0">
                        <div class="col-xs-10 col-xs-push-1 col-sm-3 col-sm-push-3 col-md-4 col-md-push-4 vs-input-text inputFn">
                            <input type="text" class="vs-popFormInput" name="userName" placeholder="名字" maxlength="30" id="formFirstname" required/>
                            <div class="errowMsg errorFn">
                                ＊请正确填写您的姓名
                            </div>
                        </div>
                    </div>
                    <%
                        String email = request.getParameter("email");
                    %>
                    <div class="row vs-popForm">
                        <div class="col-xs-10 col-xs-push-1 col-md-4 col-md-push-4 col-sm-6 col-sm-push-3 vs-input-text inputEmail">
                            <input type="email" class="vs-popFormInput" name="email" placeholder="邮箱" maxlength="30" id="formEmail" value="<%= email==null?"":email%>" required/>
                            <div class="errowMsg errorEmail">
                                ＊请正确填写您的邮箱地址
                            </div>
                        </div>
                    </div>
                    <div class="row vs-popForm">
                        <div class="col-xs-10 col-xs-push-1 col-md-4 col-md-push-4 col-sm-6 col-sm-push-3 vs-input-text inputTel">
                            <input type="tel" class="vs-popFormInput" name="telephone" placeholder="电话" maxlength="11" id="formMobile" required/>
                            <div class="errowMsg errorMobile">
                                ＊请正确填写您的电话号码
                            </div>
                        </div>
                    </div>
                    <div class="row vs-popForm" style="margin-top:40px">
                        <div class="col-sm-8 col-sm-push-3 col-md-6 col-md-push-4">
                            <div class="checkbox" style="margin-top: 0px;">
                                <label>
                                    <input type="checkbox" id="emailCheckbox">我同意通过邮件接收<span class="fabric">Victoria's Secret</span>的宣传推广和促销活动信息。
                                </label>
                                <div class="errowMsg errorTypeof1">
                                </div>
                            </div>
                            <div class="checkbox" style="margin-top: 0px;">
                                <label>
                                    <input type="checkbox" id="smsCheckbox">我确认已阅读和接受<a class="termsHref" href="terms.jsp" target="_blank">隐私条款</a>，并且同意<span class="fabric">Victoria's Secret</span>出于隐私条款中规定的目的收集、使用和传输我的个人信息。
                                </label>
                                <div class="errowMsg errorTypeof2">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="row vs-popForm text-center"  style="margin-top:40px;padding-bottom:140px">
                        <button type="submit" class="vs-homeorderBtn">点击订阅</button><%--<input class="vs-homeorderBtn" type="submit" value="点击注册">--%>
                    </div>
                    </form>
                </div>
                <div class="submitSuccess">
                    <div>
                    </div>
                    <div class="row vs-popForm" style="margin-top:0">
                        <div class="col-xs-12 text-center successCopy">
                            感谢您的订阅！
                        </div>
                        <div class="row vs-popForm text-center"  style="padding-bottom:140px">
                            <button class="vs-btn backtohome">返回首页</button>
                        </div>
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
<script src="js/setForm.js"></script>
</body>
</html>
