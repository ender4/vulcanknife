Deface::Override.new(
  :virtual_path => "spree/products/show",
  :name =>  "add_banner_to_product_show",
  :insert_before => "[data-hook='product_show'], #product_show[data-hook]",
  :text => %q{<% unless @v_banner_shown %>
  <%= render 'shared/product_banner' %>
  <% @v_banner_shown = 1 %>
<% end %>}
)
