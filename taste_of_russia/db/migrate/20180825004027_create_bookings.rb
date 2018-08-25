class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :tour_id
      t.integer :customer_id
      t.string :payment_reference
      t.date :start_date
      t.timestamps
    end
  end
end
