$(document).ready(function () {
  $("#banner div.v_carousel_content").jCarouselLite({
    btnNext: '#bannernav .v_carousel_next',
    btnPrev: '#bannernav .v_carousel_prev',
    btnGo: $('#bannernav .v_carousel_nav'),
    activeClass: 'v_c_current',
    visibleClass: 'v_c_vis',
    auto: 3000,
    speed: 1000,
    visible: 3
  });  
});

