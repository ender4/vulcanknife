var show_variant_sku = function () {
  $('.variant-sku.show').removeClass('show');
  $('.' + $('#product-variants input[type=radio]').filter(':checked').val()).addClass('show');
};

$(document).ready(function () {
  show_variant_sku();
  
  $('#product-variants input[type=radio]').click(function (event) {
    show_variant_sku();
  });
});
