class CreateSplashes < ActiveRecord::Migration
  def change
    create_table :splashes do |t|
      t.string :name
      t.string :description
      t.string :type
      t.integer :position
      t.boolean :visible

      t.timestamps
    end
  end
end
