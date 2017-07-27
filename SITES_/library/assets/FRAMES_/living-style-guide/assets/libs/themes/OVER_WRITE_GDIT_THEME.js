var search_filter = '.search-filters';
jQuery(document).ready(function ($) {
    // page = {};
    // page.navigations = {};


    // page.navigations = function () {
    //     if (nav.status == 'open') {
    //         nav.status = 'close';
    //     }
    //     return nav.status;
    // }
    
    
    $('.close-carbon-adv').on('click', function (event) {
        event.preventDefault();
        $('#carbonads-container').hide();
    });

    // the collapsed menu 
    $('.collapsed').on('click', function (event) {
        console.log('its');
        event.preventDefault();
        $('#carbonads-container').show();
    });

    $('.search-btn-mobile .search').click(function () {
        $('.search-filter').toggle("slow", function () {})
    });

    $('.search-btn-mobile2').click(function () {
        $('.search-filter').toggle("slow", function () {})
    });


    $('.search-filter').hide();

    // quick links dropdown
    $('#quick-link-icon').click(function (event) {
        event.preventDefault();
        $('#mobile-quicklinks').slideToggle();
    });

    // my favorites dropdown desktop click
    $('#fav-dropdown-btn').click(function (event) {
        event.preventDefault();
        $('#favorites-dropdown').slideToggle();
    });


    //Enable swiping...
    $(".carousel-inner").swipe({
        //Generic swipe handler for all directions
        swipeLeft: function (event, direction, distance, duration, fingerCount) {
            $(this).parent().carousel('next');
        },
        swipeRight: function () {
            $(this).parent().carousel('prev');
        },
        //Default is 75px, set to 0 for demo so any distance triggers swipe
        threshold: 0
    });

});

//---------------------------------------------------
// GENERAL CONTENT PAGE- GREY SIDEBAR FUCNTIONALITY
//---------------------------------------------------

//Panel Coloring (Active/Inactive) Logic
$(document).ready(function () {
    $(".switch").click(function () {
        var currentSpan = $(this).children(".p2m"),
            parentBgGrey = $(this).closest(".color-swap"),
            parentA = $(this).closest("a");
        if (currentSpan.hasClass("glyphicon-chevron-down")) {
            currentSpan.removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
            parentBgGrey.removeClass("bg-grey").addClass("bg-black");
            parentA.addClass("white");
        } else {
            currentSpan.removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
            parentBgGrey.removeClass("bg-black").addClass("bg-grey");
            parentA.removeClass("white");
        }
    });
});

//On Page Load Collapse
$(document).ready(function () {
    $('.grey-defaultCollapse').collapse('hide');

    // SCROLL TO TOP FUNCTIONALITY
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn();
        } else {
            $('.back-to-top').fadeOut();
        }
    });

    $('.back-to-top').click(function () {
        $("html, body").animate({
            scrollTop: 0
        }, 300);
        return false;
    });
});
