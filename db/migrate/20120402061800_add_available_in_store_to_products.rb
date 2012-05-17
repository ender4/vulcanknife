class AddAvailableInStoreToProducts < ActiveRecord::Migration
  def up
    add_column :spree_products, :available_in_store_only, :boolean, :default => false
  end
  def down
    remove_column :spree_products, :available_in_store_only
  end
end
