class Supplier < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string  :name
      t.integer :telephone
      t.integer :fax
      t.integer :email
      t.string  :payment_method
      t.text    :notes

      t.timestamps
    end
  end
end
