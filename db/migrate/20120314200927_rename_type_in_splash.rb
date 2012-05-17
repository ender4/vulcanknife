class RenameTypeInSplash < ActiveRecord::Migration
  def up
    rename_column :splashes, :type, :display_type
  end

  def down
    rename_column :splashes, :display_type, :type
  end
end
