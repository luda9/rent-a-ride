class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :initial
      t.date :final
      t.references :car, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :accepted

      t.timestamps
    end
  end
end
