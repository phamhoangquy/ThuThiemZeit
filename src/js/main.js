$(document).ready(function () {
	setBackgroundElement();
	toggleMenuMobile();
	swiperInit();
	toggleSearch();
	mappingMenu();
	scrollToDiv();
	homeS4();
	scrollMenu();
	var path = window.location.href;
	let Ketqua = path.substr(path.indexOf("#") + 1);
	console.log(Ketqua);
	if (path.indexOf("#") != -1) {
		$("html,body").animate(
			{
				scrollTop:
					$("#" + Ketqua).offset().top -
					$("header").outerHeight() -
					47,
			},
			800
		);
	}
});

// const InsertBd = () => {
//     $(".breadcrumb-wrapper").appendTo("#pagebanner .box-text");
// };

// const HotLine = () => {
//     $(".header-infor .hotline_box").appendTo(".appendhotline");
// };
let header = {
	headerScroll: () => {
		let heightHeader = $("header").height();
		$(window).scrollTop() > heightHeader
			? $("header").addClass("header-scroll")
			: $("header").removeClass("header-scroll");
	},
};

function scrollMenu() {
	$(".nav-menu li a").on("click", function (e) {
		if ("" !== this.hash) {
			var i = $("header").outerHeight() + 90,
				t = this.hash;
			$(this)
				.parent()
				.addClass("active")
				.siblings()
				.removeClass("active"),
				$("html, body").animate(
					{ scrollTop: $(t).offset().top - i },
					800
				);
		}
	});
}

const scrollToDiv = () => {
	$(".arrow-banner").click(function () {
		let sumHed =
			$(".home-banner").outerHeight() - $("header").outerHeight();
		console.log(sumHed);
		$("html,body").animate(
			{
				scrollTop: sumHed,
			},
			"fast"
		);
	});
};

// function height(el) {
//     var height = 0;
//     $(el).each(function() {
//         var thisHeight = $(this).height();
//         if (thisHeight > height) {
//             height = thisHeight;
//         }
//         setTimeout(() => {
//             $(el).height(height)
//         }, 100)
//     })
// }

function setBackgroundElement() {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center",
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
}

const toggleMenuMobile = () => {
	$(".toggle-menu").on("click", function () {
		$(this).toggleClass("active");
		$(this).siblings(".main-menu").toggleClass("active");
		$("body").toggleClass("disabled");
	});
};

function toggleSearch() {
	$(".search-icon").click(function () {
		$(this).toggleClass("click");
		$(".block_search").toggleClass("show");
	});
}

function mappingMenu() {
	$("header nav .header-infor .hotline-box").mapping({
		mobileWrapper: "header .main-menu",
		mobileMethod: "appendTo",
		desktopWrapper: "header nav .header-infor",
		desktopMethod: "insertAfter ",
		breakpoint: 1279,
	});
	$("header nav .header .language").mapping({
		mobileWrapper: "header .main-menu",
		mobileMethod: "appendTo",
		desktopWrapper: "header nav .header",
		desktopMethod: "insertAfter ",
		breakpoint: 768,
	});
}

function swiperInit() {
	var homerSwiper = new Swiper(".home-banner .swiper-container", {
		// Optional parameters
		speed: 1205,
		slidesPerView: 1,
		autoplay: {
			delay: 3000,
		},
		pagination: {
			el: ".home-banner-pagination",
			type: "bullets",
			clickable: "true",
		},
	});
}

function homeS4() {
	var kaSwiper1 = new Swiper("#ka-swiper1", {
		paginationClickable: true,
		slidesPerView: "auto",
		spaceBetween: 5,
		loop: true,
		autoHeight: true,
		navigation: {
			nextEl: ".button-next",
			prevEl: ".swiper-button-prev",
		},
	});
}

$(document).on("scroll", function () {
	header.headerScroll();
});
