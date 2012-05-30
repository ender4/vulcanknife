Deface::Override.new(
  :virtual_path => "spree/products/index",
  :name =>  "add_banner_to_products_index",
  :insert_before => "[data-hook='search_results'], #search_results, [data-hook='homepage_products'], #homepage_products",
  :partial => 'shared/product_banner'
)
