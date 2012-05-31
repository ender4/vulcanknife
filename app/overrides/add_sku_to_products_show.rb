Deface::Override.new(
  :virtual_path => "spree/products/show",
  :name =>  "add_sku_to_products_show",
  :insert_after => "[data-hook='product-images'], #product-images[data-hook]",
  :partial => "shared/sku"
)

