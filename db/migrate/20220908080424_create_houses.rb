class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :type
      t.string :location
      t.integer :bedrooms
      t.float :price
      t.string :description
      t.timestamps
    end
  end
end
