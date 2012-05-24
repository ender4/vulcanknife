$(document).ready(function () {
  var v_btns = new Array();
  var i = 0;
  $('.v-carousel-nav').each(function() {
    v_btns[i++] = "." + $(this).attr("class").replace(" ", ".");
  });


  $("#banner div.v_carousel_content").jCarouselLite({
    btnNext: '.v-carousel-next',
    btnPrev: '.v-carousel-prev',
    btnGo: v_btns,
    //activeClass: 'v-carousel-current',
    //visibleClass: 'v-carousel-visible',
    auto: 3000,
    speed: 1000,
    visible: 3//,
    //afterEnd: function(a) {
    //  $('.v-carousel-current').removeClass('v-carousel-current');
    //  $('.v-carousel-visible').removeClass('v-carousel-visible');
    //  $('.v-carousel-nav.' + a.attr("id")).addClass('v-carousel-visible v-carousel-current');
    //  $('.v-carousel-nav.' + b.attr("id")).addClass('v-carousel-visible');
    //  $('.v-carousel-nav.' + b.attr("id")).addClass('v-carousel-visible');
    //}
  });  
});

