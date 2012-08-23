class RemoveTypeFromUsers < ActiveRecord::Migration
  def up
  end

  def down
  	remove_column :type
  end
end
