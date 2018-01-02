block = false;

if ($("#formEmail").val() != '') {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Footer', // Required.
        'eventAction': 'EDM', // Required.
        'eventLabel':  $("#formEmail").val(),
        'eventValue': 1
    });
}

//表单验证
$(".vs-contentPage .vs-homeorderBtn").click(function(){

    var firstname = $("#formFirstname").val();
    var email = $("#formEmail").val();
    var mobile = $("#formMobile").val();
    var is_email = 0;
    var is_mobile = 0;

    if ($("#emailCheckbox").is(':checked')) {
        is_email = 1;
    }
    if ($("#smsCheckbox").is(':checked')) {
        is_mobile = 1;
    }
    if (firstname == "") {
        $(".errorFn").show();
        $(".vs-contentPage #formFirstname").focus()
        return false;
    }


    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
    if(!myreg.test(email))
    {
        $(".errorEmail").show();
        $(".vs-contentPage #formEmail").focus()
        return false;
    }
    if(mobile == '' || !(/^1[34578]\d{9}/.test(mobile)) ){
        $(".errorMobile").show();
        $(".vs-contentPage #formMobile").focus()
        return false;
    }
    if (is_email == 0) {
        $(".errorTypeof1").text("*请勾选同意接收来自Victoria's Secret的订阅消息").show();
        return false;
    }
    if (is_mobile == 0) {
        $(".errorTypeof2").text('*请阅读并勾选同意接受隐私条款').show();
        return false;
    }
    if(block == false){
        block = true;
        sendInfo(firstname,email,mobile,is_email,is_mobile)
    }
})

$("#regform .vs-homeorderBtn").click(function(){

    if (block==true) {
        return;
    }

    var firstname = $("#formFirstname").val();
    var email = $("#formEmail").val();
    var mobile = $("#formMobile").val();
    var is_email = 0;
    var is_mobile = 0;
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Pop-up', // Required.
        'eventAction': 'Submission', // Required.
        'eventLabel':  '',
        'eventValue': 1
    });
    if ($("#emailCheckbox").is(':checked')) {
        is_email = 1;
    }
    if ($("#smsCheckbox").is(':checked')) {
        is_mobile = 1;
    }
    if (firstname == "") {
        $(".errorFn").show();
        $("#regform #formFirstname").focus()
        return false;
    }


    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
    if(!myreg.test(email))
    {
        $(".errorEmail").show();
        $("#regform #formEmail").focus();
        return false;
    }
    if(mobile == '' || !(/^1[34578]\d{9}/.test(mobile)) ){
        $(".errorMobile").show();
        $("#regform #formMobile").focus();
        return false;
    }
    if (is_email == 0) {
        $(".errorOrdercheck").show();
        $("#regform #emailCheckbox").focus();
        //alert('请勾选同意接收来自Victoria’s Secret的订阅消息');
        return false;
    }
    if (is_mobile == 0) {
        //alert('请阅读并勾选同意接受隐私条款');
        $(".errorPolicycheck").show();
        $("#regform #smsCheckbox").focus();
        return false;
    }
    if(block == false){
        block = true;

        sendInfo(firstname,email,mobile,is_email,is_mobile)
    }
})

$("#regform input").keyup(function(event) {
    if(event.keyCode ==13){
        $("#regform .vs-homeorderBtn").trigger("click");
    }

})


/*function sendInfo(bb,cc,dd,ee,ff) {

    $.ajax({
        url: '/servlet/UserServlet?method=addUser',
        data:{
            'userName':bb,
            'telephone':dd,
            'email':cc,
            'is_email':ee,
            'is_mobile':ff,
            'source':'CNWEBSITE',
        },
        type: 'post',
        cache: false,
        async: false,
        dataType: 'json',
        success: function(value) {
            if(value.errcode == 0){

                ga('send', {
                    'hitType': 'event', // Required.
                    'eventCategory': 'Sign Up', // Required.
                    'eventAction': 'Successful Submission', // Required.
                    'eventLabel':  cc + '-' + dd,
                    'eventValue': 1
                });
                //成功的界面显示，注册界面淡出
                $(".submitSuccess").fadeIn();
                $(".formWrap").fadeOut();

                block = false;

            } else{
                block = false;
                alert(value.message);
            }
        },
        error :function() {
            block = false;
            //  window.location.href="404.php";
            alert('系统繁忙,请稍后重试');
        }
    })
}*/

/*失去焦点隐藏*/
$("input").blur(function(){
    $(".errowMsg").hide()
})
