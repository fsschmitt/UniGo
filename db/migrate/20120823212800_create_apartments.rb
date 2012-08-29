class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :title
      t.string :zone
      t.integer :max_price
      t.integer :min_price
      t.string :type
      t.text :description
      t.boolean :water
      t.boolean :electricity
      t.boolean :television
      t.boolean :internet
      t.integerra :size
      t.string :preference
      t.integer :n_available
      t.integer :creator

      t.timestamps
    end
  end
end
