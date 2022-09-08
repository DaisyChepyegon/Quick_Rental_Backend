class CreateLandloads < ActiveRecord::Migration[6.1]
  def change
    create_table :landloads do |t|
      t.integer :house_id
      t.string :name
      t.integer :contact
      t.timestamps
    end
  end
end
