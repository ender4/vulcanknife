class CreateBannerItems < ActiveRecord::Migration
  def change
    create_table :banner_items do |t|
      t.string :name
      t.string :link
      t.enum :visibility
      t.integer :position

      t.timestamps
    end
  end
end
