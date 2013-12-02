class RemoveIdFromUsersSuppliersTable < ActiveRecord::Migration
  def change
    remove_column :users_suppliers, :id
  end
end
