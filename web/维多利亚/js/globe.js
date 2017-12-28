
var _hmt = _hmt || [];
(function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?489bbb868f3e464da4290fc83135f4af";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();

var urlStr = window.location.href;
var _isMobile = {
    Android: function() {
        return /Android/i.test(navigator.userAgent);
    },
    BlackBerry: function() {
        return /BlackBerry/i.test(navigator.userAgent);
    },
    iOS: function() {
        return /iPhone|iPod/i.test(navigator.userAgent);
    },
    Windows: function() {
        return /IEMobile/i.test(navigator.userAgent);
    },
    mobile : function() {
        return /Mobile/i.test(navigator.userAgent);
    },
    any: function() {
        return (this.Android() || this.BlackBerry() || this.iOS() || this.Windows() || this.mobile());
    }
};
$(function() {
    if (urlStr.indexOf("bra")>0) {
        $(".vs-navList li:nth-child(1) a").addClass("menuActive");
    }
    if (urlStr.indexOf("beauty")>0) {
        $(".vs-navList li:nth-child(2) a").addClass("menuActive");
    }
    if (urlStr.indexOf("sports")>0) {
        $(".vs-navList li:nth-child(3) a").addClass("menuActive");
    }
    if (urlStr.indexOf("pink")>0) {
        $(".vs-navList li:nth-child(4) a").addClass("menuActive");
    }
    if (urlStr.indexOf("sub")>0) {
        $(".vs-navList li:nth-child(5) a").addClass("menuActive");
    }
    if (urlStr.indexOf("location")>0) {
        $(".vs-navList li:nth-child(6) a").addClass("menuActive");
    }
    //绑定页面滚动事件

    $(document).bind('scroll', function() {
        var len = $(window).scrollTop();
        if (len >= 100) {
            $("#floating").show();
        } else {
            $("#floating").hide();
        }
    });
    //绑定回到顶部按钮的点击事件
    $('#top').click(function() {
        // $(window).animate($(window).scrollTop(0),1000);
        //$(html body).animate({scrollTop:0},1)
        $("body,html").animate({scrollTop:0},700);
    })

    $("#btnNavBar").on("click",function(){
        $("#left-nav").show().addClass("open");
        $(".closeNav").fadeIn();
        $("#page").css("left","35%");
        $("body").css("overflow-y","hidden");
        $("body").css("position","fixed");
    })
    $("#left-nav-close").on("click",function(){
        $("#left-nav").removeClass("open").hide();
        $(".closeNav").fadeOut(300);
        $("#page").css("left","0");
        $("body").css("overflow-y","auto");
        $("body").css("position","relative");

    })
    $(".vs-modelPop .fab-ico--overlay-close, .closeredWindow").on("click",function(){
        Cookies.set('popWin', 'CNvisited');// 存储 cookie
        $("#regform").fadeOut();
        $("body").css("overflow","auto");
        $("body").css("position","relative");
    })
   /* $(".vs-orderWrap .vs-homeorderBtn").on("click",function(){
        // $("#regform").fadeIn();
        // $("body").css("overflow","hidden");
        // $("body").css("position","fixed");
        window.location.href = "subscribe.php";
    })*/
    $(".icoWechat").on("mouseover",function(){
        $(".qrcodepic").fadeIn()
    })
    $(".icoWechat").on("mouseout",function(){
        $(".qrcodepic").fadeOut()
    })
    $(".icoWechat").on("touchstart",function(){
        $(".qrcodepic").fadeToggle();
    })


    $(".backtohome").on("click",function(){
        window.location.href = "/维多利亚/维多利亚的秘密.jsp";
    })
    //   $('a[href*="#"]:not([href="#"])').click(function() {
    //   if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
    //     var target = $(this.hash);
    //     target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
    //     if (target.length) {
    //       $('html, body').animate({
    //         scrollTop: target.offset().top
    //       }, 1000);
    //       return false;
    //     }
    //   }
    // });

    /*if (_isMobile.any()) {
      var video = document.getElementById("video");
      $('.videoImg').one('click', function() {
        $('.videoImg').hide();
        var eventCategory = $('video').attr('eventCategory'), eventAction = 'Vedio', eventLabel = '';
        if (_isMobile.any()) {
          eventAction = 'Selection_' + eventCategory;
          eventCategory = 'Mobile Home';
          eventLabel = 'Vedio';
        }
        $('video').attr('controls', 'true');
        video.play();
        ga('send', {
            'hitType': 'event', // Required.
            'eventCategory': eventCategory, // Required.
            'eventAction': eventAction, // Required.
            'eventLabel': eventLabel,
            'eventValue': 1
        });
        console.log('eventCategory:' + eventCategory + ',eventAction:'+ eventAction + ',eventLabel:'+ eventLabel);
      });
    } else {
      $('video').attr({'controls': 'true','autoplay': 'autoplay'});
      var eventCategory = $('video').attr('eventCategory'), eventAction = 'Vedio', eventLabel = '';
      ga('send', {
            'hitType': 'event', // Required.
            'eventCategory': eventCategory, // Required.
            'eventAction': eventAction, // Required.
            'eventLabel': eventLabel,
            'eventValue': 1
      });
      console.log('eventCategory:' + eventCategory + ',eventAction:'+ eventAction + ',eventLabel:'+ eventLabel);
    }*/
});
$('.vs-tmallLink').mouseover(function(){
    $('.vs-tmallLink').attr("src","assets/i/icoTmall_hover.png");
});
$('.vs-tmallLink').mouseout(function(){
    $('.vs-tmallLink').attr("src","assets/i/icoTmall.png");
});

$('.findStoreBox').mouseover(function(event) {
    $('.findStoreBox .findStore, .findStoreBox p a').addClass('findStoreActive');
}).mouseout(function(event){
    $('.findStoreBox .findStore, .findStoreBox p a').removeClass('findStoreActive');
});

$('.findStoreBox').on('click', function(event) {
    event.preventDefault();
    window.location.href = "location.php";
});

function jumpPage(tag) {
    $("body").css("position","relative");
    // var aa = urlStr.indexOf("index.php")
    // if (aa != -1 ) {
    //   $("#left-nav").removeClass("open").hide();
    //   $(".closeNav").fadeOut(300);
    //   $("#page").css("left","0");
    //   $("body").css("overflow","auto");
    //   $('html, body').animate({
    //     // scrollTop: target.offset().top
    //     scrollTop: $("#" + tag).offset().top
    //   }, 1000);
    // } else {
    window.location.href = tag + ".jsp";
    // }
}
