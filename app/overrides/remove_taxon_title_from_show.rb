Deface::Override.new(
  :virtual_path => "spree/taxons/show",
  :name => "remove_taxon_title_from_show",
  :remove => ".taxon-title"
)
