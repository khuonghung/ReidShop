(function ($) {
    "use strict";
    
    new WOW().init();  
    /*---background image---*/
	function dataBackgroundImage() {
		$('[data-bgimg]').each(function () {
			var bgImgUrl = $(this).data('bgimg');
			$(this).css({
				'background-image': 'url(' + bgImgUrl + ')', // + meaning concat
			});
		});
    }
    
    $(window).on('load', function () {
        dataBackgroundImage();
    });
    
    /*---
       stickey menu
    ---*/
    $(window).on('scroll',function() {    
           var scroll = $(window).scrollTop();
           if (scroll < 100) {
            $(".sticky-header").removeClass("sticky");
           }else{
            $(".sticky-header").addClass("sticky");
           }
    });
    
    /* slider activation */
    $('.slider_area').owlCarousel({
        animateOut: 'fadeOut',
        autoplay: true,
		loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 1,
        dots:true,
        navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
    });

    /* product_column3 activation */
    $('.product_column3').slick({
        centerMode: true,
        centerPadding: '0',
        slidesToShow: 3,
        arrows:true,
        rows: 2,
        prevArrow:'<button class="prev_arrow"><i class="fa fa-angle-left"></i></button>',
        nextArrow:'<button class="next_arrow"><i class="fa fa-angle-right"></i></button>', 
        responsive:[
            {
              breakpoint: 300,
              settings: {
                slidesToShow: 1,
                  slidesToScroll: 1,
              }
            },
            {
              breakpoint: 768,
              settings: {
                  slidesToShow: 2,
                  slidesToScroll: 2,
              }
            },
            {
              breakpoint: 992,
              settings: {
                slidesToShow: 3,
                  slidesToScroll: 3,
              }
            },
            {
              breakpoint: 1200,
              settings: {
                slidesToShow: 2,
                  slidesToScroll: 2,
              }
            },
        ]
    });
    
    /* product_column3 activation */
    $('.product_column4').slick({
        centerMode: true,
        centerPadding: '0',
        slidesToShow: 4,
        arrows:true,
        rows: 2,
        prevArrow:'<button class="prev_arrow"><i class="fa fa-angle-left"></i></button>',
        nextArrow:'<button class="next_arrow"><i class="fa fa-angle-right"></i></button>', 
        responsive:[
            {
              breakpoint: 300,
              settings: {
                slidesToShow: 1,
                  slidesToScroll: 1,
              }
            },
            {
              breakpoint: 768,
              settings: {
                  slidesToShow: 2,
                  slidesToScroll: 2,
              }
            },
            {
              breakpoint: 992,
              settings: {
                slidesToShow: 3,
                  slidesToScroll: 3,
              }
            },
           
        ]
    });

    /* product_rows_column4 activation */
    $('.product_rows_column4').slick({
        centerMode: true,
        centerPadding: '0',
        slidesToShow: 4,
        arrows:true,
        rows: 3,
        prevArrow:'<button class="prev_arrow"><i class="fa fa-angle-left"></i></button>',
        nextArrow:'<button class="next_arrow"><i class="fa fa-angle-right"></i></button>', 
        responsive:[
            {
              breakpoint: 300,
              settings: {
                slidesToShow: 1,
                  slidesToScroll: 1,
              }
            },
            {
              breakpoint: 768,
              settings: {
                  slidesToShow: 2,
                  slidesToScroll: 2,
              }
            },
            {
              breakpoint: 992,
              settings: {
                slidesToShow: 3,
                  slidesToScroll: 3,
              }
            },
           
        ]
    });
    
    /* product_row activation */
    $('.product_row1').slick({
        centerMode: true,
        centerPadding: '0',
        slidesToShow: 4,
        arrows:true,
        prevArrow:'<button class="prev_arrow"><i class="fa fa-angle-left"></i></button>',
        nextArrow:'<button class="next_arrow"><i class="fa fa-angle-right"></i></button>', 
        responsive:[
            {
              breakpoint: 300,
              settings: {
                slidesToShow: 1,
                  slidesToScroll: 1,
              }
            },
            {
              breakpoint: 768,
              settings: {
                  slidesToShow: 2,
                  slidesToScroll: 2,
              }
            },
            {
              breakpoint: 992,
              settings: {
                slidesToShow: 3,
                  slidesToScroll: 3,
              }
            },
           
        ]
    });
    
    /* product_row activation */
    $('.product_slick_column5').slick({
        centerMode: true,
        centerPadding: '0',
        slidesToShow: 5,
        arrows:true,
        prevArrow:'<button class="prev_arrow"><i class="fa fa-angle-left"></i></button>',
        nextArrow:'<button class="next_arrow"><i class="fa fa-angle-right"></i></button>', 
        responsive:[
            {
              breakpoint: 300,
              settings: {
                slidesToShow: 1,
                  slidesToScroll: 1,
              }
            },
            {
              breakpoint: 768,
              settings: {
                  slidesToShow: 2,
                  slidesToScroll: 2,
              }
            },
            {
              breakpoint: 992,
              settings: {
                slidesToShow: 3,
                  slidesToScroll: 3,
              }
            },
             {
              breakpoint: 1200,
              settings: {
                slidesToShow: 4,
                  slidesToScroll: 4,
              }
            },
           
        ]
    });
    
    /* product_column3 activation */
    $('.product_column5').slick({
        centerMode: true,
        centerPadding: '0',
        slidesToShow: 5,
        arrows:true,
        rows: 2,
        prevArrow:'<button class="prev_arrow"><i class="fa fa-angle-left"></i></button>',
        nextArrow:'<button class="next_arrow"><i class="fa fa-angle-right"></i></button>', 
        responsive:[
            {
              breakpoint: 300,
              settings: {
                slidesToShow: 1,
                  slidesToScroll: 1,
              }
            },
            {
              breakpoint: 768,
              settings: {
                  slidesToShow: 2,
                  slidesToScroll: 2,
              }
            },
            {
              breakpoint: 992,
              settings: {
                slidesToShow: 3,
                  slidesToScroll: 3,
              }
            },
            {
              breakpoint: 1200,
              settings: {
                slidesToShow: 4,
                  slidesToScroll: 4,
              }
            },
           
        ]
    });
    
    /* blog column3 activation */
    $('.blog_column3').owlCarousel({
        autoplay: true,
		loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 3,
        dots:false,
        margin: 30,
        navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
        responsiveClass:true,
		responsive:{
				0:{
				items:1,
			},
           768:{
				items:2,
			},
            992:{
				items:3,
			},
		  
        }
    });
    
    /* instagram column5 activation */
    $('.instagram_column5').owlCarousel({
        autoplay: true,
		loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 5,
        dots:false,
        margin: 30,
        navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
        responsiveClass:true,
		responsive:{
				0:{
				items:1,
			},
            300:{
				items:2,
                margin: 20,
			},
            500:{
				items:3,
                margin: 20,
			},
            768:{
				items:4,
			},
            1200:{
				items:5,
			},
		  
        }
    });
    
    /* shipping_column5 activation */
    $('.shipping_column5').owlCarousel({
        autoplay: true,
		loop: true,
        nav: false,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 6,
        dots:false,
        margin: 20,
        responsiveClass:true,
		responsive:{
				0:{
				items:1,
			},
            320:{
				items:2,
			},
            480:{
				items:3,
			},
            768:{
				items:4,
			},
            992:{
				items:5,
			},
            1200:{
				items:6,
			},
		  
        }
    });
    
    /* product_three_column4activation */
    $('.product_three_column4').owlCarousel({
        autoplay: true,
		loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 4,
        dots:false,
        margin: 30,
        navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
        responsiveClass:true,
		responsive:{
				0:{
				items:1,
			},
            300:{
				items:2,
                margin: 20,
			},
            768:{
				items:3,
			},
            992:{
				items:4,
			},
 
        }
    });
    
    /* single product activation */
    $('.single-product-active').owlCarousel({
        autoplay: true,
		loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 4,
        margin:15,
        dots:false,
        navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
        responsiveClass:true,
		responsive:{
				0:{
				items:1,
			},
            320:{
				items:2,
			},
            992:{
				items:3,
			},
            1200:{
				items:4,
			},


		  }
    });
    
    /* blog active activation */
    $('.blog_thumb_active').owlCarousel({
        autoplay: true,
		loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 1,
        dots:false,
        navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
    });
    
    /* product navactive activation */
    $('.product_navactive').owlCarousel({
        autoplay: true,
		loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 4,
        dots:false,
        navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
        responsiveClass:true,
		responsive:{
				0:{
				items:1,
			},
            250:{
				items:2,
			},
            480:{
				items:3,
			},
            768:{
				items:4,
			},
		  
        }
    });

    $('.modal').on('shown.bs.modal', function (e) {
        $('.product_navactive').resize();
    })

    $('.product_navactive a').on('click',function(e){
      e.preventDefault();

      var $href = $(this).attr('href');

      $('.product_navactive a').removeClass('active');
      $(this).addClass('active');

      $('.product-details-large .tab-pane').removeClass('active show');
      $('.product-details-large '+ $href ).addClass('active show');

    })
    
    
     /*---MailChimp---*/
    $('#mc-form').ajaxChimp({
        language: 'en',
        callback: mailChimpResponse,
        // ADD YOUR MAILCHIMP URL BELOW HERE!
        url: 'http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef'

    });
    function mailChimpResponse(resp) {

        if (resp.result === 'success') {
            $('.mailchimp-success').addClass('active')
            $('.mailchimp-success').html('' + resp.msg).fadeIn(900);
            $('.mailchimp-error').fadeOut(400);

        } else if(resp.result === 'error') {
            $('.mailchimp-error').html('' + resp.msg).fadeIn(900);
        }  
    }
    
    /*--
        Magnific Popup
    ------------------------*/
    $('.instagram_pupop').magnificPopup({
        type: 'image',
        gallery: {
            enabled: true
        }
    });

    // Magnific Popup Video
    $('.video_popup').magnificPopup({
        type: 'iframe',
        removalDelay: 300,
        mainClass: 'mfp-fade'
    });
    
    // Magnific Popup Video
    $('.port_popup').magnificPopup({
        type: 'image',
        gallery: {
            enabled: true
        }
    });
    /*--
    
    /*niceSelect*/
     $('.select_option').niceSelect();
    

    /*--
    Accordion
    -------------------------*/
    $(".faequently-accordion").collapse({
        accordion:true,
        open: function() {
        this.slideDown(300);
      },
      close: function() {
        this.slideUp(300);
      }		
    });	  

    /*counterup activation*/
    $('.counter_number').counterUp({
        delay: 10,
        time: 1000
    });

    /*--
        ScrollUp Active
    -----------------------------------*/
    $.scrollUp({
        scrollText: '<i class="fa fa-angle-double-up"></i>',
        easingType: 'linear',
        scrollSpeed: 900,
        animation: 'fade'
    });   
    
    /*------addClass/removeClass -------*/
    $(".currency > a,.language > a,.top_links > a").on("click", function() {
        $(this).removeAttr('href');
        $(this).toggleClass('open').next('.dropdown_currency,.dropdown_language,.dropdown_links').toggleClass('open');
        $(this).parents().siblings().find('.dropdown_currency,.dropdown_language,.dropdown_links').removeClass('open');
    });

    $('body').on('click', function (e) {
        var target = e.target;
        if (!$(target).is('.currency > a,.language > a,.top_links > a') ) {
            $('.dropdown_currency,.dropdown_language,.dropdown_links').removeClass('open');
        }
    });
    
    /*mini cart slideToggle*/
    $('.cart_link > a').on('click', function(event){
        if($(window).width() < 991){
            $('.mini_cart').slideToggle('medium');
        }
    });
    
    /*home menu slideToggle*/
    $(".home_page_mennu").on("click", function() {
        $('.dropdown_home_menu').slideToggle('medium');
    });
    
    /*blog menu slideToggle*/
    $(".blog_menu").on("click", function() {
        $('.dropdown_blog_menu').slideToggle('medium');
    });
    
    /*blog menu slideToggle*/
    $(".other_page_menu").on("click", function() {
        $('.dropdown_other_page_menu').slideToggle('medium');
    });
    
    /*shop menu items slideToggle*/
    $(".shop_menu_items").on("click", function() {
        $('.dropdown_shop_items').slideToggle('medium');
    });
   
    
    /*shop menu items2 slideToggle*/
    $(".shop_menu_items2").on("click", function() {
        $('.dropdown_shop_items2').slideToggle('medium');
    });
    
    /*shop menu items2 slideToggle*/
    $(".shop_menu_items3").on("click", function() {
        $('.dropdown_shop_items3').slideToggle('medium');
    });
    
     /*------addClass/removeClass -------*/
    $(".icone_menu > a").on("click", function() {
        $(this).removeAttr('href');
        $(this).toggleClass('open').next('.home_menu_inner').toggleClass('open');
        $(this).parents().siblings().find('.home_menu_inner').removeClass('open');
    });
    
    /*------addClass/removeClass -------*/
    $(".shop_menu > a").on("click", function() {
        $(this).removeAttr('href');
        $(this).toggleClass('open').next('.dropdown_shop_menu').toggleClass('open');
        $(this).parents().siblings().find('.dropdown_shop_menu').removeClass('open');
    });
    
    /*------addClass/removeClass -------*/
    $(".footer_show_button > a").on("click", function() {
        $(this).removeAttr('href');
        $(this).toggleClass('open').next('.footer_widgets_inner').toggleClass('open');
        $(this).parents().siblings().find('.footer_widgets_inner').removeClass('open');
    });
    
    /*mini cart slideToggle*/
     $(".search_btn").on("click", function(){
        $(this).removeAttr('href');
        $(".dropdown_search_btn").addClass("active");
    });
    
    $(".button_close").on("click", function(){
        $(".dropdown_search_btn").removeClass("active");
    });
    

    /*search_btn slideToggle*/
    $(".box_setting > a").on("click", function() {
        $('.dropdown_box_setting').slideToggle('medium');
    });
    
    
    /*countdown activation*/
    $('[data-countdown]').each(function() {
		var $this = $(this), finalDate = $(this).data('countdown');
		$this.countdown(finalDate, function(event) {
		$this.html(event.strftime('<div class="countdown_area"><div class="single_countdown"><div class="countdown_number">%D</div><div class="countdown_title">days</div></div><div class="single_countdown"><div class="countdown_number">%H</div><div class="countdown_title">hrs</div></div><div class="single_countdown"><div class="countdown_number">%M</div><div class="countdown_title">mins</div></div><div class="single_countdown"><div class="countdown_number">%S</div><div class="countdown_title">secs</div></div></div>'));        
       });
	});	
    

    /*----------------------------
    	slider-range here
    ------------------------------ */
    $( "#slider-range" ).slider({
        range: true,
        min: 50,
        max: 500,
        values: [ 0, 500 ],
        slide: function( event, ui ) {
        $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
       }
    });
    $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
       " - $" + $( "#slider-range" ).slider( "values", 1 ) );
    

    /*niceSelect*/
     $('.niceselect_option').niceSelect();
    
    
    //tooltip
    $('[data-toggle="tooltip"]').tooltip()
    
    
    /*-------------------------------------------
    elevateZoom
    -------------------------------------------- */	
    $("#zoom1").elevateZoom({
        gallery:'gallery_01', 
        responsive : true,
        cursor: 'crosshair',
        zoomType : 'inner'
    });  

    /*portfolio Isotope activation*/
      $('.portfolio_gallery').imagesLoaded( function() {
        // init Isotope
        var $grid = $('.portfolio_gallery').isotope({
           itemSelector: '.gird_item',
            percentPosition: true,
            masonry: {
                columnWidth: '.gird_item'
            }
        });
            
        // filter items on button click
        $('.portfolio_button').on( 'click', 'button', function() {
           var filterValue = $(this).attr('data-filter');
           $grid.isotope({ filter: filterValue });
            
           $(this).siblings('.active').removeClass('active');
           $(this).addClass('active');
        });
       
    });
    

    // Newsletter Popup
    setTimeout(function() {
        if($.cookie('shownewsletter')==1) $('.newletter-popup').hide();
        $('#subscribe_pemail').keypress(function(e) {
            if(e.which == 13) {
                e.preventDefault();
                email_subscribepopup();
            }
            var name= $(this).val();
              $('#subscribe_pname').val(name);
        });
        $('#subscribe_pemail').change(function() {
         var name= $(this).val();
                  $('#subscribe_pname').val(name);
        });
        //transition effect
        if($.cookie("shownewsletter") != 1){
            $('.newletter-popup').bPopup();
        }
        $('#newsletter_popup_dont_show_again').on('change', function(){
            if($.cookie("shownewsletter") != 1){   
                $.cookie("shownewsletter",'1')
            }else{
                $.cookie("shownewsletter",'0')
            }
        }); 
    }, 2000);
    
    
    /*shop grid activation*/
    $('.shop_toolbar_btn > button').on('click', function (e) {
		e.preventDefault();
        $('.shop_toolbar_btn > button').removeClass('active');
		$(this).addClass('active');
        
		var parentsDiv = $('.shop_wrapper');
		var viewMode = $(this).data('role');
		parentsDiv.removeClass('grid_3 grid_4 grid_5 grid_list').addClass(viewMode);

		if(viewMode == 'grid_3'){
			parentsDiv.children().addClass('col-lg-4 col-md-4 col-sm-6').removeClass('col-lg-3 col-cust-5 col-12');   
		}
		if(viewMode == 'grid_4'){
			parentsDiv.children().addClass('col-lg-3 col-md-4 col-sm-6').removeClass('col-lg-4 col-cust-5 col-12');
		}
		if(viewMode == 'grid_5'){
			parentsDiv.children().addClass('col-cust-5 col-md-4 col-sm-6' ).removeClass('col-lg-3 col-lg-4 col-12');
		}
        if(viewMode == 'grid_list'){
			parentsDiv.children().addClass('col-12').removeClass('col-lg-3 col-lg-4 col-md-4 col-sm-6 col-cust-5');
		}
        
        
	});
    
    
    /*---canvas menu activation---*/
    $('.canvas_open').on('click', function(){
        $('.offcanvas_menu_wrapper,.off_canvars_overlay').addClass('active')
    });
    
    $('.canvas_close,.off_canvars_overlay').on('click', function(){
        $('.offcanvas_menu_wrapper,.off_canvars_overlay').removeClass('active')
    });
    
    
     /*---categories slideToggle---*/
    $(".categories_title").on("click", function() {
        $(this).toggleClass('active');
        $('.categories_menu_toggle').slideToggle('medium');
    }); 
    
    
    /*---addClass/removeClass categories---*/
   $("#cat_toggle.has-sub > a").on("click", function() {
            $(this).removeAttr('href');
            $(this).toggleClass('open').next('.categorie_sub').toggleClass('open');
            $(this).parents().siblings().find('#cat_toggle.has-sub > a').removeClass('open');
    });
    
    
    /*---Category menu---*/
    function categorySubMenuToggle(){
        $('.categories_menu_toggle li.menu_item_children > a').on('click', function(){
        if($(window).width() < 991){
            $(this).removeAttr('href');
            var element = $(this).parent('li');
            if (element.hasClass('open')) {
                element.removeClass('open');
                element.find('li').removeClass('open');
                element.find('ul').slideUp();
            }
            else {
                element.addClass('open');
                element.children('ul').slideDown();
                element.siblings('li').children('ul').slideUp();
                element.siblings('li').removeClass('open');
                element.siblings('li').find('li').removeClass('open');
                element.siblings('li').find('ul').slideUp();
            }
        }
        });
        $('.categories_menu_toggle li.menu_item_children > a').append('<span class="expand"></span>');
    }
    categorySubMenuToggle();
    
    
    /*---Off Canvas Menu---*/
    var $offcanvasNav = $('.offcanvas_main_menu'),
        $offcanvasNavSubMenu = $offcanvasNav.find('.sub-menu');
    $offcanvasNavSubMenu.parent().prepend('<span class="menu-expand"><i class="fa fa-angle-down"></i></span>');
    $offcanvasNavSubMenu.slideUp();
    $offcanvasNav.on('click', 'li a, li .menu-expand', function(e) {
        var $this = $(this);
        if ( ($this.parent().attr('class').match(/\b(menu-item-has-children|has-children|has-sub-menu)\b/)) && ($this.attr('href') === '#' || $this.hasClass('menu-expand')) ) {
            e.preventDefault();
            if ($this.siblings('ul:visible').length){
                $this.siblings('ul').slideUp('slow');
            }else {
                $this.closest('li').siblings('li').find('ul:visible').slideUp('slow');
                $this.siblings('ul').slideDown('slow');
            }
        }
        if( $this.is('a') || $this.is('span') || $this.attr('clas').match(/\b(menu-expand)\b/) ){
        	$this.parent().toggleClass('menu-open');
        }else if( $this.is('li') && $this.attr('class').match(/\b('menu-item-has-children')\b/) ){
        	$this.toggleClass('menu-open');
        }
    });
    
    
    /*js ripples activation*/
    $('.js-ripples').ripples({
		resolution: 512,
		dropRadius: 20,
		perturbance: 0.04
	});
    
    
})(jQuery);	
