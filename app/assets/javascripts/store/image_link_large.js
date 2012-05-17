//var add_image_handlers = function() {
//  $("#main-image").data('selectedThumb', $('#main-image img').attr('src'));
//  $('ul.thumbnails li').eq(0).addClass('selected');
//
//  $('ul.thumbnails').delegate('a', 'click', function(event) {
//    $("#main-image").data('selectedThumb', $(event.currentTarget).attr('href'));
//    $("#main-image").data('selectedThumbId', $(event.currentTarget).parent().attr('id'));
//    $(this).mouseout(function() {
//      $('ul.thumbnails li').removeClass('selected');
//      $(event.currentTarget).parent('li').addClass('selected');
//    });
//    return false;
//  });
//  $('ul.thumbnails').delegate('li', 'mouseenter', function(event) {
//    $('#main-image img').attr('src', $(event.currentTarget).find('a').attr('href'));
//  });
//  $('ul.thumbnails').delegate('li', 'mouseleave', function(event) {
//    $('#main-image img').attr('src', $("#main-image").data('selectedThumb'));
//  });
//};

var v_update_large_link = function() {
  var v_main_image = $("#main-image");

  if (v_main_image.length) {
    var v_img_src = v_main_image.data('selectedThumb');
    var v_arr = v_img_src.split('/');
    
    var v_hash = new Object();
    v_hash['product'] = 1;
    v_hash['mini'] = 1;
    v_hash['thumb'] = 1;
    
    for (i = 0 ; i < v_arr.length ; i++) {
      if (v_hash[v_arr[i]] == 1) {
        v_arr[i] = "large";
      }
    }
    
    var v_img_link = '#main-image a.vulcan-large-link';
    $(v_img_link).attr('href', v_arr.join('/'));
    $(v_img_link).lightBox();
  }
};

$(document).ready(function() {
  $('#main-image img').wrap("<a href='#' class='vulcan-large-link' />");
  v_update_large_link();
  $("ul.thumbnails").delegate('a', 'click', function(event) {
    v_update_large_link();
  });
});

