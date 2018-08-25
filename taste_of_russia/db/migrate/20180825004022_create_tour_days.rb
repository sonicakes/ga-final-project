class CreateTourDays < ActiveRecord::Migration[5.2]
  def change
    create_table :tour_days do |t|

      t.timestamps
    end
  end
end
