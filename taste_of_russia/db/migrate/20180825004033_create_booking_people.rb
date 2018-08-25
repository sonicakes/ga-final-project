class CreateBookingPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_people do |t|

      t.timestamps
    end
  end
end
