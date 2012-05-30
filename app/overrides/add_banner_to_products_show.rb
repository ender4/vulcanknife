Deface::Override.new(
  :virtual_path => "spree/products/show",
  :name =>  "add_banner_to_products_show",
  :insert_before => "[data-hook='product_show'], #product_show[data-hook]",
  :partial => 'shared/product_banner'
)
