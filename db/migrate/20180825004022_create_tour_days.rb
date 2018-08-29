class CreateTourDays < ActiveRecord::Migration[5.2]
  def change
    create_table :tour_days do |t|
      t.string :title
      t.integer :tour_id
      t.string :description
      t.string :day_image_url
      t.integer :order
      t.string :location
      t.timestamps
    end
  end
end
