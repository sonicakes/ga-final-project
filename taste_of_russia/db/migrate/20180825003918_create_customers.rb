class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
    t.text :password_digest
     t.text :first_name
     t.text :email
     t.text :phone_number
     t.text :last_name
      t.timestamps
    end
  end
end
