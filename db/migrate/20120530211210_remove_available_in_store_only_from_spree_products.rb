class RemoveAvailableInStoreOnlyFromSpreeProducts < ActiveRecord::Migration
  def up
    remove_column :spree_products, :available_in_store_only
  end
  def down
    add_column :spree_products, :available_in_store_only, :boolean, :default => false
  end
end
