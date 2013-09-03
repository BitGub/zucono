class ChangeDeletedDefaultToFalse < ActiveRecord::Migration
  def up
    change_column :products, :deleted, :boolean, :default=>false
  end
end
