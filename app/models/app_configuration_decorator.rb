Spree::AppConfiguration.class_eval do
  preference :show_available_in_store_only_products, :boolean, :default => true
end
