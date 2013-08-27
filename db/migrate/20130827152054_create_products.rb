class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.decimal :unit_price
      t.string :product_description
      t.boolean :deleted

      t.timestamps
    end
  end
end
