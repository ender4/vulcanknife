Deface::Override.new(
  :virtual_path => "spree/shared/_head",
  :name =>  "replace_title",
  :replace_contents => "title",
  :partial => "shared/title"
)

