class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.text :password_digest
       t.text :first_name
       t.text :email
       t.text :last_name
      t.timestamps
    end
  end
end
