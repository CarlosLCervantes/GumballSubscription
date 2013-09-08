var current_page_number = 1;
var scrolled_before_clicked_next = false;

function resize_landing_page() {
  $.each($(".next-button"), function(index, button) {
    var button = $(button);
    var parent = button.parent();
    $(button).css({'top': (parent.offset().top+parent.height() - button.height()/2)+'px', 'left': $(window).width()/2 - $(button).width()/2 + 'px'});
  });
}

function move_to_page(a_page_number) {
  current_page_number = a_page_number;
  var next_page = $("#page-" + current_page_number);
  $(window).scrollTop(next_page.offset().top-$("header").height());
  scrolled_before_clicked_next = false;
}

resize_landing_page();

$(window).resize(function() {
  resize_landing_page();
  move_to_page(current_page_number);
});

$(window).scroll(function() {
  scrolled_before_clicked_next = true;
  $.each($(".page-section"), function(index, page) {
    if ( $(page).offset().top > $(window).scrollTop() )  {
      current_page_number = $(page).data('page-number');
      return false;
    }
  });
});

$(".next-button").click( function(event) {
  current_page = parseInt($(this).parent().data('page-number'));
  move_to_page(current_page + 1);
});