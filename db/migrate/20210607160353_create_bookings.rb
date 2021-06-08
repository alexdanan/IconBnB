class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :icon, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.time :start_time
      t.time :end_time
      t.integer :total_price
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
