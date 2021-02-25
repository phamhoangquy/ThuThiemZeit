$(document).ready(function() {
    toggleMenuMobile();
    swiperInit();
    toggleSearch();
    mappingMenu();
    homeS4();
    linksMenu();
    scrollToDiv();
    setBackgroundElement();
});

window.onload = function() {
    $(".mask, .modal-ads").addClass('active');
};
$('.mask, .close').click(function() {
    $(this).toggleClass("click");
    $('.mask').toggleClass("active");
    $('.modal-ads').toggleClass("active");
});
// const InsertBd = () => {
//     $(".breadcrumb-wrapper").appendTo("#pagebanner .box-text");
// };

let header = {
    headerScroll: () => {
        let heightHeader = $("header").height();
        $(window).scrollTop() > heightHeader ?
            $("header").addClass("header-scroll") :
            $("header").removeClass("header-scroll");
    },
};

let language = {
    languageScroll: () => {
        let heightHeader = $(".language").height();
        $(window).scrollTop() > heightHeader ?
            $(".language").addClass("language-scroll") :
            $(".language").removeClass("language-scroll");
    },
};

let search = {
    searchScroll: () => {
        let heightHeader = $(".search-icon").height();
        $(window).scrollTop() > heightHeader ?
            $(".search-icon").addClass("search-scroll") :
            $(".search-icon").removeClass("search-scroll");
    },
};

function linksMenu() {
    $(".nav-menu li a").on("click", function(event) {
        if (this.hash !== "") {
            let offset123 =
                $("header").outerHeight();
            var hash = this.hash;
            console.log($(hash).offset().top)
            console.log(hash)
            $("html, body").animate({
                    scrollTop: $(hash).offset().top - offset123,
                },
                800

            );
        } // End if
    });
}

const scrollToDiv = () => {
    $(".arrow-banner").click(function() {
        let sumHed =
            $(".home-banner").outerHeight() - $("header").outerHeight();
        console.log(sumHed);
        $("html,body").animate({
                scrollTop: sumHed,
            },
            "fast"
        );
    });
};

function height(el) {
    var height = 0;
    $(el).each(function() {
        var thisHeight = $(this).height();
        if (thisHeight > height) {
            height = thisHeight;
        }
        setTimeout(() => {
            $(el).height(height)
        }, 100)
    })
}

function setBackgroundElement() {
    $("[setBackground]").each(function() {
        var background = $(this).attr("setBackground");
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-size": "cover",
            "background-position": "center center",
        });
    });
    $("[setBackgroundRepeat]").each(function() {
        var background = $(this).attr("setBackgroundRepeat");
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-repeat": "repeat",
        });
    });
}

const toggleMenuMobile = () => {
    $(".toggle-menu").on("click", function() {
        $(this).toggleClass("active");
        $(this).siblings(".main-menu").toggleClass("active");
        $("body").toggleClass("disabled");
    });
};

function toggleSearch() {
    $(".search-icon").click(function() {
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
        // loop: true,
        autoHeight: true,
        navigation: {
            nextEl: ".button-next",
            prevEl: ".swiper-button-prev",
        },
    });
}

$(document).on("scroll", function() {
    header.headerScroll();
    language.languageScroll();
    search.searchScroll();
});