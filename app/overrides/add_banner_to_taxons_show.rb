Deface::Override.new(
  :virtual_path => "spree/taxons/show",
  :name =>  "add_banner_to_taxons_show",
  :insert_before => "[data-hook='taxon_products'], #taxon_products, [data-hook='taxon_children'], #taxon_children",
  :partial => 'shared/product_banner'
)
