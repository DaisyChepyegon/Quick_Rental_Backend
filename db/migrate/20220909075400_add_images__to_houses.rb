class AddImagesToHouses < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :image, :blob
  end
end
