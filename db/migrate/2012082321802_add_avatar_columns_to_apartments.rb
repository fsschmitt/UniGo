class AddAvatarColumnsToApartments < ActiveRecord::Migration
  def self.up
    add_attachment :apartments, :avatar
  end

  def self.down
    remove_attachment :apartments, :avatar
  end
end