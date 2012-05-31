Spree::Taxon.class_eval do
  default_scope :order => "position ASC"
  attachment_definitions[:icon][:styles] = {
    :mini => '60x30>',
    :small => '240x120>',
    :normal => '480x240>'
  }
end
