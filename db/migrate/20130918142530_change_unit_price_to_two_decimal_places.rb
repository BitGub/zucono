class ChangeUnitPriceToTwoDecimalPlaces < ActiveRecord::Migration
  def change
  	change_column :products, :unit_price, :decimal, :precision => 10, :scale => 2
  end
end
