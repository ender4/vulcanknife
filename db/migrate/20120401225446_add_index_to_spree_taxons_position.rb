class AddIndexToSpreeTaxonsPosition < ActiveRecord::Migration
  def self.up
    add_index(:spree_taxons, :position)
  end

  def self.down
    remove_index(:spree_taxons, :position)
  end
end
