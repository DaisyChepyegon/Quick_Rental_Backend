class AddLandloadIdToHouses < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :landload_id, :integer
  end
end
