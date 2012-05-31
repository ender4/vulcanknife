class AddAvailbiltyToSpreeProducts < ActiveRecord::Migration
  def up
    add_column :spree_products, :availability, :enum
  end
  def down
    remove_column :spree_products, :availability
  end
end
