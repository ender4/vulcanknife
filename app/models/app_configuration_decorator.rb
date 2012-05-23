Spree::AppConfiguration.class_eval do
  preference :show_available_in_store_only_products, :boolean, :default => true
  preference :max_taxons_in_menu, :integer, :default => 5
end
