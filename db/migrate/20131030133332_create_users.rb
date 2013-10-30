class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :surname
      t.string :email
      t.integer :role_id

      t.timestamps
    end
  end
end
