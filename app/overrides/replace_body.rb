Deface::Override.new(
  :virtual_path => "spree/layouts/spree_application",
  :name => "replace_body",
  :replace_contents => "[data-hook='body'], #body[data-hook]",
  :partial => "shared/body"
)
