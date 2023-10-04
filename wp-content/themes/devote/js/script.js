// JavaScript Document for charity html template

var $ = jQuery.noConflict();
$(document).ready(function() {
//open search bar toggle code
"use strict";
	// Search field toggle in top bar
	$('li.search a').click(function(e) {
		$(this).parent().find('#top-search').toggle().focus();
		$('#top-links').toggleClass('search-open');
		e.preventDefault();
	});	

	$('.widget_categories ul li.cat-item a').before('<i class="fa fa-arrow-right"></i> ');
	$('.widget_recent_entries ul li a').before('<i class="fa fa-arrow-right"></i> ');
	$('ul.widget-nav-menu li a').before('<i class="fa fa-arrow-right"></i> ');
	$('.widget_archive li a').before('<i class="fa fa-arrow-right"></i> ');		


  $("#owl-gallery").owlCarousel({
      autoPlay: 3000, //Set AutoPlay to 3 seconds
      items : 3,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3],
      singleItem:true,
  });

	if($("#isotope").has(".grid"))
	{
		$('.grid').masonry({
			itemSelector: '.grid-item'
		  });
	}
	
	$("#menu-footer").addClass("list-style");	

	$('.search_icon a').click(function(e) {
		$(this).parent().find('.top-search').toggle().focus();
		e.preventDefault();
	});

	call_fullwidth();
	
  $(".three-columns").owlCarousel({
 
      slideSpeed : 800,
      paginationSpeed : 800,
      autoPlay:4000,
      items : 3,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3],
      navigation : true, // Show next and prev buttons
      navigationText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],	  
      pagination:false,	  
 
  });  

	// Testiminail  corousel
	"use strict";
	$(".testimonials-ct").owlCarousel({
      autoPlay: 4000, //Set AutoPlay to 3 seconds
      items : 1,
      itemsDesktop : [1199,1],
      itemsDesktopSmall : [979,1],
      navigation : true, // Show next and prev buttons
      navigationText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],	  
      pagination:false,	   
    });	
	
	// Testiminail  corousel
	"use strict";
	$(".causes-slide").owlCarousel({
      autoPlay: 5000, //Set AutoPlay to 3 seconds
      items : 1,
      slideSpeed : 7000,
      paginationSpeed : 2000,	  
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3],
      navigation : true, // Show next and prev buttons
      navigationText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],	  
      pagination:false,	   
    });		

  "use strict";
  $("#tp-gallery-box").owlCarousel({
	  slideSpeed : 800,
      paginationSpeed : 800,
      autoPlay:4000,
      items : 4,
      navigation : true, // Show next and prev buttons
      navigationText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],	  
      pagination:false,
  });  


	
});

///////// set full width of screen
function call_fullwidth()
{
	if($("div").hasClass('pattern1'))
	{
		var side_padding=(($(document).width()-$(".pattern1").width())/2);
		
		$(".pattern1").css( { paddingLeft : side_padding+"px", paddingRight : side_padding+"px" } );
		$(".pattern1").css( { marginLeft : "-"+side_padding+"px", marginRight : "-"+side_padding+"px" } );		
	}
	if($("div").hasClass('pattern2'))
	{
		var side_padding=(($(document).width()-$(".pattern2").width())/2);
		
		$(".pattern2").css( { paddingLeft : side_padding+"px", paddingRight : side_padding+"px" } );
		$(".pattern2").css( { marginLeft : "-"+side_padding+"px", marginRight : "-"+side_padding+"px" } );		
	}
}

$( window ).resize(function() {
  call_fullwidth();
});



$('.bar-percentage[data-percentage]').each(function () {
  var progress = $(this);
  var percentage = Math.ceil($(this).attr('data-percentage'));
  $({countNum: 0}).animate({countNum: percentage}, {
    duration: 2000,
    easing:'linear',
    step: function() {
      // What todo on every count
    var pct = '';
    if(percentage == 0){
      pct = Math.floor(this.countNum) + '%';
    }else{
      pct = Math.floor(this.countNum+1) + '%';
    }
    progress.text(pct) && progress.siblings().children().css('width',pct);
    }
  });
});


/* Navigation menu script */
var doc_width=$( document ).width();
if(doc_width>767) /* Above this width the menu will display in dropdown on mouse over - default display for big screen*/
{
	$('.navbar .dropdown').hover(function() {
	"use strict";
	$(this).find('.dropdown-menu').first().stop(true, true).slideDown(300);
	}, function() {
		$(this).find('.dropdown-menu').first().stop(true, true).slideUp(400);
	});
	
	$('.tp-header').affix({
		offset: {
		top: $('.top-bar').height()
		}
	});
	$('.tp-header').on('affix-top.bs.affix', function () {
     
	});	
} 

