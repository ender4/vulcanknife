Deface::Override.new(
  :virtual_path => "spree/products/_cart_form",
  :name =>  "add_availability_to_product_show",
  :replace_contents => "[data-hook='product_price'] .add-to-cart",
  :partial => "shared/product_show_availability_for_cart"
)

