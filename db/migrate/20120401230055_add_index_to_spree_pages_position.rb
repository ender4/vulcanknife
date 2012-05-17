class AddIndexToSpreePagesPosition < ActiveRecord::Migration
  def self.up
    add_index(:spree_pages, :position)
  end

  def self.down
    remove_index(:spree_pages, :position)
  end
end
