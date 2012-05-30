$(document).ready(function($) {
  var v_logo_color_swap = function() {
    var s = $(this).parent().children("span");
    var s1 = s.filter(":first");
    var s2 = s.filter(":last");
    var temp = s1.css("color");
    s1.css("color", s2.css("color"));
    s2.css("color", temp);
  };
  
  $('#logo span').hover(v_logo_color_swap, v_logo_color_swap);
});

