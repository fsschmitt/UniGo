class AddTelephoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :telephone, :int
  end
end
