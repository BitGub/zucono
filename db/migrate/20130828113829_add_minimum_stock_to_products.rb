class AddMinimumStockToProducts < ActiveRecord::Migration
  def change
    add_column :products, :minimum_stock, :integer
  end
end
