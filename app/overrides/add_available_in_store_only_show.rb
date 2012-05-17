Deface::Override.new(
  :virtual_path => "spree/admin/inventory_settings/show",
  :name =>  "add_available_in_store_only_show",
  :insert_after => "h1:first-child",
  :text => "<h4><%= t(:products_available_in_store_only_will_) + t(Spree::Config[:show_available_in_store_only_products] ? :be_shown : :not_be_shown) %></h4>"
)

