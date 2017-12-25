(function(i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r;
    i[r] = i[r] || function() {
        (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date();
    a = s.createElement(o),
        m = s.getElementsByTagName(o)[0];
    a.async = 1;
    a.src = g;
    m.parentNode.insertBefore(a, m)
})(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

ga('create', 'UA-86229626-1', 'auto');
ga('send', 'pageview');

/*$('.footerStore').on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Footer', // Required.
        'eventAction': 'Store', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});*/
$('.vs-tamll').on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Footer', // Required.
        'eventAction': 'Tmall', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});
$('.popUpBoxWeiBo').on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Pop-up', // Required.
        'eventAction': 'WeiBo', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});
$('.popUpBoxWeChat').on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Pop-up', // Required.
        'eventAction': 'WeChat', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});
$('.footerWeibo').on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Footer', // Required.
        'eventAction': 'WeiBo', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});

$('.footerWechat').on('click, mouseover', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Footer', // Required.
        'eventAction': 'WeChat', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});

$('.footerTerms').on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Footer', // Required.
        'eventAction': 'Terms', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});

$('.fab-ico--overlay-close').on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Pop-up', // Required.
        'eventAction': 'Close', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});

$('.vs-homepageOrder .vs-homeorderBtn').on('click', function() {
    if ($(window).width() > 768) {
        var eventCategory = 'Home Page';
    } else {
        var eventCategory = 'Mobile Home';
    }
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': eventCategory, // Required.
        'eventAction': 'Sign Up', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});

var navList = ['Fashion show', 'Bra', 'Beauty', 'Sport', 'Pink', 'Sign Up', 'Store'];
$('.vs-navList li, .interactive-nav ul li').on('click', function() {
    var idx = $(this).index();
    console.log(navList[idx])
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Navigator', // Required.
        'eventAction': navList[idx], // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});

var mobileKvList = ['Beauty', 'Sport', 'Pink'];
$('.mobieKv').children().on('click', function() {
    var idx = $(this).index();
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Mobile Home', // Required.
        'eventAction': 'Selection', // Required.
        'eventLabel': mobileKvList[idx],
        'eventValue': 1
    });
});

$('.vs-logo').on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Navigator', // Required.
        'eventAction': 'Title', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});

$('.mobileLogo').on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Mobile Navigator', // Required.
        'eventAction': 'Title', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});

$(".vs-input-text button").on('click', function() {
    var inputMail = $("#vableew").val();
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Footer', // Required.
        'eventAction': 'EDM', // Required.
        'eventLabel': inputMail,
        'eventValue': 1
    });
});

$(".vs-modelPop .termsHref").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Pop-up', // Required.
        'eventAction': 'Terms', // Required.
        'eventLabel': "",
        'eventValue': 1
    });
});
$(".homemainKv").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Home Page', // Required.
        'eventAction': 'HeroBanner', // Required.
        'eventLabel': "",
        'eventValue': 1
    });
});
$(".bramainKv").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Bra', // Required.
        'eventAction': 'HeroBanner', // Required.
        'eventLabel': "",
        'eventValue': 1
    });
});
$(".beautymainKv").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Bearty', // Required.
        'eventAction': 'HeroBanner', // Required.
        'eventLabel': "",
        'eventValue': 1
    });
});
$(".sportsmainKv").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Sports', // Required.
        'eventAction': 'HeroBanner', // Required.
        'eventLabel': "",
        'eventValue': 1
    });
});
$(".pinkmainKv").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Pink', // Required.
        'eventAction': 'HeroBanner', // Required.
        'eventLabel': "",
        'eventValue': 1
    });
});
$(".vs-contentPage .termsHref").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Sign Up', // Required.
        'eventAction': 'Terms', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});
$("#btnNavBar").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Mobile Navigator', // Required.
        'eventAction': 'Menu', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});
$("#btnFind").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Mobile Navigator', // Required.
        'eventAction': 'Store', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});
$("#btnSubs").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Mobile Navigator', // Required.
        'eventAction': 'Sign Up', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});
$(".ga_en").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Language', // Required.
        'eventAction': 'Select', // Required.
        'eventLabel': '[ENGLISH]',
        'eventValue': 1
    });
});
$(".ga_cn").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Language', // Required.
        'eventAction': 'Select', // Required.
        'eventLabel': '[CHINESE]',
        'eventValue': 1
    });
});
$(".mobileMainKv").on('click', function() {
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'Mobile Home', // Required.
        'eventAction': 'Selection', // Required.
        'eventLabel': "Bra",
        'eventValue': 1
    });
});

$(".ga-email").on('click', function() {
    if ($(window).width() > 768) {
        var eventCategory = 'PCFooter-CN';
    } else {
        var eventCategory = 'MobileFooter-CN';
    }
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': eventCategory, // Required.
        'eventAction': 'Contact Email', // Required.
        'eventLabel': '',
        'eventValue': 1
    });
});