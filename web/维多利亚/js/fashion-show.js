var weiboList, weiboLen = 6;
var weiboList2, weiboLen2;
var weiboList3, weiboLen3;

var currWinHeight = $(window).height();
var currWinWidth = $(window).width();

var slidesPerView = 3, slidesPerView2 = 1;

$.post('../api/weibo/getListByType', {type: 'angel'}, function(data) {
	if (data.code == 0) {
		weiboList = data.data;
		if (weiboList.length <= 6) {
			weiboLen = weiboList.length;
		}
		for (var i = 0; i <= weiboLen - 1; i++) {
			if (weiboList[i].thumb_pic != '') {
				var imgUrl = weiboList[i].title_pic;
				/*if (i == 2 || i == 3) {
					imgUrl = 'assets/i/fashion-show/slide00' + i + '.jpg';
				}*/
				if (currWinWidth < 768) {
					var option = '<div class="swiper-slide isHide" data-num="' + i + '"><div class="img-bg" style="background-image: url(' + imgUrl + ')"></div></div>';
					var picCont = '<div class="pic-cont mob" data-num="' + i + '"><div data-href="' + weiboList[i].weibo_url + '" class="head-cont mob"><img class="head-img mob" src="' + weiboList[i].profile_image_url +'"><a href="' + weiboList[i].weibo_url + '" class="user-name mob">' + weiboList[i].user_name + '</a><p class="heart mob"><img class="icon_heart mob" src="assets/i/ico_heart.png"><span class="heart-num mob">' + weiboList[i].attitudes_count + '</span></p></div><img class="pic-img mob" src="' + weiboList[i].thumb_pic + '"><p class="pic-caption mob">' + weiboList[i].content + '</p></div>';
					$('.pic-wrap1 .pic-cont-wrap').append(picCont);
				} else {
					var option = '<div class="swiper-slide isHide" data-num="' + i + '"><div class="img-bg" style="background-image: url(' + imgUrl + ')"></div><div class="mouseover-slide"><div class="pic-cont pc" data-num="' + i + '"><div data-href="' + weiboList[i].weibo_url + '" class="head-cont pc"><img class="head-img pc" src="' + weiboList[i].profile_image_url +'"><a href="' + weiboList[i].weibo_url + '" class="user-name pc">' + weiboList[i].user_name + '</a></div><p class="pic-caption pc">' + weiboList[i].content + '</p></div></div></div>';
				}
				$('.weibo-wrap1 .swiper-wrapper').append(option);
			}
		}
		if (weiboLen > 2) {
			if (currWinWidth > 768) {
				slidesPerView = 4;
			}
			var mySwiper = new Swiper('.weibo-wrap1 .swiper-container', {
				slidesPerView: slidesPerView,
				slidesPerGroup: 2,
				spaceBetween: 10,
				preventClicks: false,
				prevButton:'.weibo-wrap1 .swiper-button-prev',
				nextButton:'.weibo-wrap1 .swiper-button-next'
			})
			var _w = $('.swiper-slide').width();
			$('.weibo-wrap1 .swiper-slide, .weibo-wrap1 .img-bg').height(_w);
		}
	}
})/*.fail(function(){alert( "error" );});*/

$.post('../api/weibo/getListByType', {type: 'runway'}, function(data) {
	if (data.code == 0) {
		weiboList2 = data.data;
		weiboLen2 = weiboList2.length;
		for (var i = 0; i <= weiboLen2 - 1; i++) {
			if (weiboList2[i].thumb_pic != '') {
				var imgUrl = weiboList2[i].title_pic;
				/*if (i == 2 || i == 3) {
					imgUrl = 'assets/i/fashion-show/slide00' + i + '.jpg';
				}*/
				if (currWinWidth < 768) {
					var option = '<div class="swiper-slide isHide" data-num="' + i + '"><div class="img-bg" style="background-image: url(' + imgUrl + ')"></div></div>';
					var picCont = '<div class="pic-cont mob" data-num="' + i + '"><div data-href="' + weiboList2[i].weibo_url + '" class="head-cont mob"><img class="head-img mob" src="' + weiboList2[i].profile_image_url +'"><a href="' + weiboList2[i].weibo_url + '" class="user-name mob">' + weiboList2[i].user_name + '</a><p class="heart mob"><img class="icon_heart mob" src="assets/i/ico_heart.png"><span class="heart-num mob">' + weiboList2[i].attitudes_count + '</span></p></div><img class="pic-img mob" src="' + weiboList2[i].thumb_pic + '"><p class="pic-caption mob">' + weiboList2[i].content + '</p></div>';
					$('.pic-wrap2 .pic-cont-wrap').append(picCont);
				} else {
					var option = '<div class="swiper-slide isHide" data-num="' + i + '"><div class="img-bg" style="background-image: url(' + imgUrl + ')"></div><div class="mouseover-slide"><div class="pic-cont pc" data-num="' + i + '"><div data-href="' + weiboList2[i].weibo_url + '" class="head-cont pc"><img class="head-img pc" src="' + weiboList2[i].profile_image_url +'"><a href="' + weiboList2[i].weibo_url + '" class="user-name pc">' + weiboList2[i].user_name + '</a></div><p class="pic-caption pc">' + weiboList2[i].content + '</p></div></div></div>';
				}
				$('.weibo-wrap2 .swiper-wrapper').append(option);
			}
		}
		if (weiboLen2 > 2) {
			if (currWinWidth > 768) {
				slidesPerView = 4;
			}
			var mySwiper = new Swiper('.weibo-wrap2 .swiper-container', {
				slidesPerView: slidesPerView,
				slidesPerGroup: 2,
				spaceBetween: 10,
				preventClicks: false,
				prevButton:'.weibo-wrap2 .swiper-button-prev',
				nextButton:'.weibo-wrap2 .swiper-button-next'
			})
			var _w = $('.swiper-slide').width();
			$('.weibo-wrap2 .swiper-slide, .weibo-wrap2 .img-bg').height(_w);
		}
	}
})/*.fail(function(){alert( "error" );});*/

$.post('../api/weibo/getListByType', {type: 'socialposts'}, function(data) {
	if (data.code == 0) {
		weiboList3 = data.data;
		if (weiboList3.length <= 6) {
			weiboLen3 = weiboList3.length;
		}
		for (var i = 0; i <= weiboLen3 - 1; i++) {
			if (weiboList3[i].thumb_pic != '') {
				var imgUrl = weiboList3[i].title_pic;
				/*if (i == 2 || i == 3) {
					imgUrl = 'assets/i/fashion-show/slide00' + i + '.jpg';
				}*/
				if (currWinWidth < 768) {
					var option = '<div class="swiper-slide isHide swiper-no-swiping" data-num="' + i + '"><div class="img-bg" style="background-image: url(' + imgUrl + ')"></div></div>';
				} else {
					var option = '<div class="swiper-slide isHide swiper-no-swiping" data-num="' + i + '"><div class="img-bg" style="background-image: url(' + imgUrl + ')"></div><div class="mouseover-slide"><div class="pic-cont pc" data-num="' + i + '"><div data-href="' + weiboList3[i].weibo_url + '" class="head-cont pc"><img class="head-img pc" src="' + weiboList3[i].profile_image_url +'"><a href="' + weiboList3[i].weibo_url + '" class="user-name pc">' + weiboList3[i].user_name + '</a></div><p class="pic-caption pc">' + weiboList3[i].content + '</p></div></div></div>';
				}
				$('.weibo-wrap3 .swiper-wrapper').append(option);
			}
		}
			if (currWinWidth > 768) {
				slidesPerView2 = 2;
			}
			var mySwiper = new Swiper('.weibo-wrap3 .swiper-container', {
				slidesPerView: slidesPerView2,
				slidesPerGroup: 2,
				spaceBetween: 10,
				simulateTouch : false
			})
			var _w = $('.weibo-wrap3 .swiper-slide').width();
			$('.weibo-wrap3 .swiper-slide, .weibo-wrap3 .swiper-slide .img-bg').height(_w);
	}
})/*.fail(function(){alert( "error" );});*/

$('.pic-cont-wrap').on('click', '.head-cont', function(event) {
	event.preventDefault();
	var url = $(this).attr('data-href');
	window.location = url;
});
var videoV;
$('.video-cont').on('click', function(event) {
	event.preventDefault();
	var url = $(this).attr('video-url');
	console.log(url)
	if (playeVideo != null) {
		playeVideo.pause();
	}
	if (videoPlay != null) {
		videoPlay.pause();
	}
	if (videoPlay1 != null) {
		videoPlay1.pause();
	}
	if (videoPlay2 != null) {
		videoPlay2.pause();
	}
	$('.video-play-wrap video').attr('src', url);
	$('.video-play-wrap').show();
	disable_scroll();
	videoV = document.getElementById("video-video");
	videoV.play();
});
$('.video-col3').on('click', '.video-cont', function(event) {
	event.preventDefault();
	var idx = $(this).index();
	ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'VSFS', // Required.
        'eventAction': 'Training Video' + (idx + 1), // Required.
        'eventLabel': 'Video' + (idx + 1),
        'eventValue': 1
    });
    console.log('Video' + (idx + 1));
});

$('.video-col1').on('click', '.video-cont', function(event) {
	event.preventDefault();
	var idx = $(this).index();
	ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'VSFS', // Required.
        'eventAction': 'Video', // Required.
        'eventLabel': 'Video',
        'eventValue': 1
    });
    console.log('Video');
});


$('.close').on('click', function(event) {
	event.preventDefault();
	enable_scroll();
	$('.video-play-wrap').hide();
	videoV.pause();
});


var videoPlay;
$('.videoImg, .videoImg-text, .vplay').on('click', function(event) {
	event.preventDefault();
	var videoImg  = $(this), videoId = $('#video2-mob'), video2 = document.getElementById("video2-mob");
	if (videoImg.hasClass('pc')) {
		videoImg = videoImg.find('.img');
		videoId = $('#video2-pc');
		video2 = document.getElementById("video2-pc");
	}
	if (playeVideo != null) {
		playeVideo.pause();
	}
	if (videoPlay != null) {
		videoPlay.pause();
	}
	if (videoPlay1 != null) {
		videoPlay1.pause();
	}
	if (videoPlay2 != null) {
		videoPlay2.pause();
	}
	videoPlay = video2;
	if ($(this).hasClass('videoImg-text')) {
		$('.videoImg .img').show().addClass('opacityHide');
	} else if ($(this).hasClass('vplay')) {
		$('.videoImg.mob').show().addClass('opacityHide');
	} else {
		videoImg.show().addClass('opacityHide');
	}
	videoId.addClass('show');
	video2.play();
	ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'VSFS', // Required.
        'eventAction': 'Video', // Required.
        'eventLabel': 'Video4',
        'eventValue': 1
    });
    console.log('Video4')
});
var _winHeight;
var _height2 = 0;
$('.weibo-wrap1').on('click', '.swiper-slide', function(event) {
	event.preventDefault();
	if (currWinWidth < 768) {
		_winHeight = $('body').height();
		$('.pic-wrap1').show().addClass('show');
		var _cur = $(this).attr('data-num');
		var _height = 0;
		for (var i = 0; i < _cur; i++) {
			_height = _height + $('.pic-wrap1 .pic-cont').eq(i).height();
		}
		if (_height2 == 0) {
			_height2 = $('.pic-wrap1').height()
		}
		$('.wrap').addClass('wrapHide').height(_height2)
		$('footer, #video').hide();
		$('html,body').animate({scrollTop: _height});
		ga('send', {
	        'hitType': 'event', // Required.
	        'eventCategory': 'VSFS', // Required.
	        'eventAction': 'RollingImage', // Required.
	        'eventLabel': 'Section' + (i + 1),
	        'eventValue': 1
	    });
	    console.log('Section' + (i + 1));
	}
});

$('.weibo-wrap2').on('click', '.swiper-slide', function(event) {
	event.preventDefault();
	if (currWinWidth < 768) {
		_winHeight = $('body').height();
		$('.pic-wrap2').show().addClass('show');
		var _cur = $(this).attr('data-num');
		var _height = 0;
		for (var i = 0; i < _cur; i++) {
			_height = _height + $('.pic-wrap2 .pic-cont').eq(i).height();
		}
		if (_height2 == 0) {
			_height2 = $('.pic-wrap2').height()
		}
		$('.wrap').addClass('wrapHide').height(_height2)
		$('footer, #video').hide();
		$('html,body').animate({scrollTop: _height});
		ga('send', {
	        'hitType': 'event', // Required.
	        'eventCategory': 'VSFS', // Required.
	        'eventAction': 'RollingImage', // Required.
	        'eventLabel': 'Section' + (i + 1),
	        'eventValue': 1
	    });
	    console.log('Section' + (i + 1));
	}
});

$('.arrow').on('click', function(event) {
	event.preventDefault();
	$('.pic-wrap1, .pic-wrap2').hide().removeClass('show');
	$('footer, #video').show();
	$('.wrap').removeClass('wrapHide').height(_winHeight);
	$('html,body').animate({scrollTop: 0});
});


$(".wechat-show, .fashion-show-video2, .weibo-wrap").on("click",function(){
    $(".wechat-show").fadeOut();
})

$(".wechat-icon").on("click",function(){
    $(".wechat-show").fadeIn();
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'VSFS', // Required.
        'eventAction': 'Icon', // Required.
        'eventLabel': 'WeChat',
        'eventValue': 1
    });
    console.log('WeChat')
})

/*$(".weibo-icon").on("click",function(){
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'VSFS', // Required.
        'eventAction': 'Icon', // Required.
        'eventLabel': 'Weibo',
        'eventValue': 1
    });
    console.log('Weibo')
    window.location = 'http://weibo.com/p/1006066016404050/home?from=page_100606&mod=TAB&is_all=1#place';
})

$(".email-wrap").on("click",function(){
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'VSFS', // Required.
        'eventAction': 'Unlock', // Required.
        'eventLabel': 'Unlock Now',
        'eventValue': 1
    });
    console.log('Unlock Now')
    window.location = '../en/subscribe.php'; 
})*/

$(window).scroll(function(event){
	$(".wechat-show").fadeOut();
});

$(".email-icon").on("click",function(){
    ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'VSFS', // Required.
        'eventAction': 'Email', // Required.
        'eventLabel': 'Submit',
        'eventValue': 1
    });
    console.log('Submit')
})


var playeVideo;
$('.e-video-text, .e-play').on('click', function(event) {
	event.preventDefault();
	if (playeVideo != null) {
		playeVideo.pause();
	}
	if (videoPlay != null) {
		videoPlay.pause();
	}
	if (videoPlay1 != null) {
		videoPlay1.pause();
	}
	if (videoPlay2 != null) {
		videoPlay2.pause();
	}
	if ($(this).hasClass('e-play')) {
		$(this).addClass('opacityHide');
	} else {
		$(this).parent().find('.e-play').addClass('opacityHide');
	}
	$('.e-video-pc').removeClass('show');
	var eVideoId = $(this).attr('video-id'),
		eVideo = document.getElementById(eVideoId);
	playeVideo = document.getElementById(eVideoId);

	$('#' + eVideoId).addClass('show');
	eVideo.play();
	ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'VSFS', // Required.
        'eventAction': 'Video', // Required.
        'eventLabel': eVideoId,
        'eventValue': 1
    });
    console.log(eVideoId);

});

$('.show-2').on('click', function(event) {
	event.preventDefault();
	$('.pic-wrap-2').addClass('show');
	var _height = $('.pic-wrap-2').height();
	$('.wrap').height(_height).addClass('overflowHidden');
	$('html,body').animate({scrollTop: 0});
});

$('.close-btn').on('click', function(event) {
	event.preventDefault();
	$(this).hide();
	$('.pic-wrap-2').removeClass('show');
	$('.wrap').height('auto').removeClass('overflowHidden');
	var top = $('.destination').offset().top;
	$('html,body').animate({scrollTop: top});
});


var videoPlay1, _isplay1 = true;
$('.videoImg-1').on('click', function(event) {
	event.preventDefault();
	var videoImg  = $(this), videoId = $('#video-1'), video2 = document.getElementById("video-1");
	if (playeVideo != null) {
		playeVideo.pause();
	}
	if (videoPlay != null) {
		videoPlay.pause();
	}
	if (videoPlay2 != null) {
		videoPlay2.pause();
	}
	videoPlay1 = video2;
	videoImg.find('img').addClass('opacityHide');
	
	videoId.addClass('show');
	if (_isplay1) {
		video2.play();
		_isplay1 = false
	} else {
		if (video2.paused) {
			video2.play();
		} else {
			video2.pause();
		}
	}
	ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'VSFS', // Required.
        'eventAction': 'Video', // Required.
        'eventLabel': 'fantasy bra1',
        'eventValue': 1
    });
    console.log('fantasy bra1');
});

var videoPlay2, _isplay2 = true;
$('.videoImg-2').on('click', function(event) {
	event.preventDefault();
	var videoImg  = $(this), videoId = $('#video-2'), video2 = document.getElementById("video-2");
	if (videoImg.hasClass('pc')) {
		videoImg = videoImg.find('.img');
	}
	if (playeVideo != null) {
		playeVideo.pause();
	}
	if (videoPlay != null) {
		videoPlay.pause();
	}
	if (videoPlay1 != null) {
		videoPlay1.pause();
	}
	videoPlay2 = video2;
	
	videoImg.find('img').addClass('opacityHide');

	videoId.addClass('show');
	if (_isplay2) {
		video2.play();
		_isplay2 = false
	} else {
		if (video2.paused) {
			video2.play();
		} else {
			video2.pause();
		}
	}
	ga('send', {
        'hitType': 'event', // Required.
        'eventCategory': 'VSFS', // Required.
        'eventAction': 'Video', // Required.
        'eventLabel': 'fantasy bra2',
        'eventValue': 1
    });
    console.log('fantasy bra2');
});


var playeVideo2;
$('.video-play-play').on('click', function(event) {
	event.preventDefault();
	if (playeVideo != null) {
		playeVideo.pause();
	}
	if (videoPlay != null) {
		videoPlay.pause();
	}
	if (videoPlay1 != null) {
		videoPlay1.pause();
	}
	if (videoPlay2 != null) {
		videoPlay2.pause();
	}
	if ($(this).hasClass('e-play')) {
		$(this).addClass('opacityHide');
	}
	$('.e-video-pc').removeClass('show');
	var eVideoId = $(this).attr('video-id'),
		eVideo = document.getElementById('video-wrap2');
	playeVideo2 = document.getElementById(eVideoId);

	$('#video-wrap2').addClass('show');
	eVideo.play();
});


$('body').on('click', '.user-name.pc', function(event) {
	event.preventDefault();
	var href = $(this).attr('href');
	window.location = href;
});


window.share = {
    imgUrl : 'http://'+window.location.host+'/assets/i/fashion-show/share.jpg',
    link : 'http://'+window.location.host+'/fashion-show.php',
    title : "A Fantastic & Gorgeous Feast | 2017 Victoria’s Secret Fashion Show Is Coming",
    desc : "A Fantastic & Gorgeous Feast | 2017 Victoria’s Secret Fashion Show Is Coming",
} 

$(function () {
    shareConfig();   
});

var keys = [37, 38, 39, 40];

function preventDefault(e) {
    e = e || window.event;
    if (e.preventDefault)
        e.preventDefault();
    e.returnValue = false;
}

function keydown(e) {
    for (var i = keys.length; i--;) {
        if (e.keyCode === keys[i]) {
            preventDefault(e);
            return;
        }
    }
}

function wheel(e) {
    preventDefault(e);
}

function disable_scroll() {
    if (window.addEventListener) {
        window.addEventListener('DOMMouseScroll', wheel, false);
    }
    window.onmousewheel = document.onmousewheel = wheel;
    document.onkeydown = keydown;
}

function enable_scroll() {
    if (window.removeEventListener) {
        window.removeEventListener('DOMMouseScroll', wheel, false);
    }
    window.onmousewheel = document.onmousewheel = document.onkeydown = null;
}

document.oncontextmenu = function(){
    event.returnValue = false;
}
document.oncontextmenu = function(){
    return false;
}