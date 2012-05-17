Deface::Override.new(
  :virtual_path => "spree/products/_cart_form",
  :name =>  "add_available_in_store_only_cart",
  :replace_contents => "[data-hook='product_price'] .add-to-cart",
  :partial => "shared/available_in_store_only_cart"
)

