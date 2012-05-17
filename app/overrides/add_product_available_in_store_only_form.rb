Deface::Override.new(
  :virtual_path => "spree/admin/products/_form",
  :name =>  "add_product_available_in_store_only_form",
  :insert_top => "[data-hook='admin_product_form_right'], #admin_product_form_right[data-hook]",
  :text => "<%= f.field_container :available_in_store_only do %><%= f.label :available_in_store_only, t(:available_in_store_only) %>  <%= f.check_box :available_in_store_only %><% end %>"
)

