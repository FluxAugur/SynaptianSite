// JavaScript Document for Theflow
			
$(document).ready(function() {

//Thumbnail hover effect for gallery
$('.thumb').hover(function(){  
	$(this).find(".zoom_icon").animate({left: '130px'}, 300);
	}  
	, function(){  
	$(this).find(".zoom_icon").animate({left: '-90px'}, 300);
});


}); //close document.ready


