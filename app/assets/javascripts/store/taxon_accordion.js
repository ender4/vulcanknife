$(document).ready(function () {
  $("[data-hook='taxonomies'] > a, #taxonomies[data-hook] > a").click(function () {
    $(this).toggleClass("plus").next().toggle('slow');
    return false;
   }).addClass("toggle plus").next().hide();
});

