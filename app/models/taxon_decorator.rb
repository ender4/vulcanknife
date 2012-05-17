Spree::Taxon.class_eval do
  default_scope :order => "position ASC"
end
