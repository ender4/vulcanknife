class AddAltToBannerItems < ActiveRecord::Migration
  def change
    add_column :banner_items, :alt, :string
  end
end
