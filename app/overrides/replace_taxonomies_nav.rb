Deface::Override.new(
  :virtual_path => "spree/shared/_taxonomies",
  :name => "replace_taxonomies_nav",
  :replace_contents => "[data-hook='taxonomies'], #taxonomies[data-hook]",
  :partial => "shared/taxonomies"
)
