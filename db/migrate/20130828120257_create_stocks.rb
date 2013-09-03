class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :current_stock
      t.references :product, index: true

      t.timestamps
    end
  end
end
