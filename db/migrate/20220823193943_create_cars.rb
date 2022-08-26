class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.integer :year
      t.string :color
      t.string :model
      t.string :plate
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
