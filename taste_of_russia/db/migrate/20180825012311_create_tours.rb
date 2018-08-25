class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :title
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
