class CreateTourDays < ActiveRecord::Migration[5.2]
  def change
    create_table :tour_days do |t|
      t.string :title
      t.integer :tour_id
      t.string :description
      t.timestamps
    end
  end
end
