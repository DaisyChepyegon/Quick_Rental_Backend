class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :comment
      t.integer :house_id
      t.timestamps
    end
  end
end
