Deface::Override.new(
  :virtual_path => "spree/admin/inventory_settings/edit",
  :name =>  "add_available_in_store_only_edit",
  :insert_before => "[data-hook='show_zero_stock'], #show_zero_stock[data-hook]",
  :partial => "shared/available_in_store_only"
)

