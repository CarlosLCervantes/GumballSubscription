var current_page_number = 1;

function resize_landing_page() {
  $.each($(".next-button"), function(index, button) {
    var button = $(button);
    var parent = button.parent();
    $(button).css({'top': (parent.offset().top+parent.height() - button.height()/2)+'px', 'left': $(window).width()/2 - $(button).width()/2 + 'px'});
  });
}

function move_to_page(a_page_number, a_animate) {
  current_page_number = a_page_number;
  var next_page = $("#page-" + current_page_number);

  //animate is too slow for when window resizing, so it cant be used
  var scroll_top = next_page.offset().top-$("header").height();
  if (typeof a_animate == 'undefined' || a_animate) {
    $("html, body").animate({scrollTop: scroll_top}, 300);
  } else {
    $(window).scrollTop( scroll_top );
  }
  
  make_page_active(a_page_number);
}

function make_page_active(a_page_number) {
  current_page_number = a_page_number;
  $("ul.nav>li").removeClass("active");
  $("#header-page-"+a_page_number).addClass("active");
}

resize_landing_page();

$(window).resize(function() {
  resize_landing_page();
  move_to_page(current_page_number, false);
});

$(window).scroll(function() {
  $.each($(".page-section"), function(index, page) {
    if ( $(page).offset().top > $(window).scrollTop() )  {
      make_page_active($(page).data('page-number'));
      return false;
    }
  });
});

$(".header-page-link").click( function(event) {
  move_to_page(parseInt($(this).parent().data('page-number')));
});

$(".next-button").click( function(event) {
  current_page = parseInt($(this).parent().data('page-number'));
  move_to_page(current_page + 1);
});