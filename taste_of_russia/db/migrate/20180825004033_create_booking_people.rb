class CreateBookingPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_people do |t|
      t.integer :booking_id
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end
