Deface::Override.new(
  :virtual_path => "spree/shared/_products",
  :name =>  "add_available_in_store_only_products",
  :replace_contents => "[data-hook='products'], #products[data-hook]",
  :partial => "shared/products"
)
