// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require lib/prettify/prettify
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).ready(function() {
  $('a[data-rel]').each(function() {
    $(this).attr('rel', $(this).data('rel'));
  });
  $("a[rel^='prettyPhoto']").prettyPhoto({
    animation_speed: 'slow',
    slideshow: 5000,
    autoplay_slideshow: false,
    opacity: 0.80,
    show_title: true,
    theme: 'pp_default', /* light_rounded / dark_rounded / light_square / dark_square / facebook */
    overlay_gallery: false,
    social_tools: false
  });
});

$(document).ready(function() {
  $('.image-slider').flexslider({
    animation: "fade",
    slideshowSpeed: 14000,
    animationDuration: 1000,
    controlNav: true,
    keyboardNav: true,
    directionNav: false,
    pauseOnHover: true,
    pauseOnAction: true
  });

  getTwitters('tweet', {
    id: 'synaptian',
    count: 3,
    enableLinks: true,
    ignoreReplies: true,
    clearContents: true,
    template: '"%text%" <a href="http://twitter.com/%user_screen_name%/statuses/%id_str%/">%time%</a>'
  });

});
