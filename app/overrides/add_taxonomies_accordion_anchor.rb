Deface::Override.new(
  :virtual_path => "spree/shared/_taxonomies",
  :name =>  "add_taxonomies_accordion_anchor",
  :surround => ".taxonomy-root",
  :text => "<a href='#'><%= render_original %></a>"
)

