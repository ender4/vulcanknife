Deface::Override.new(
  :virtual_path => "spree/admin/products/_form",
  :name =>  "add_product_availability_to_admin_product_form",
  :insert_top => "[data-hook='admin_product_form_right'], #admin_product_form_right[data-hook]",
  :text => "<%= f.field_container :availability do %><%= f.label :availability %> <%= f.enum_select :availability %><% end %>"
)

