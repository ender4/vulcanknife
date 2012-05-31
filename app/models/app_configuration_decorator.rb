Spree::AppConfiguration.class_eval do
  preference :max_taxons_in_menu, :integer, :default => 5
end
