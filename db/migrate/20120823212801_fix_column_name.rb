class FixColumnName < ActiveRecord::Migration
	def self.up
		rename_column :apartments, :type, :ap_type
	end

	def self.down
	end
end