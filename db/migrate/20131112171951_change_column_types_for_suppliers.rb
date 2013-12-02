class ChangeColumnTypesForSuppliers < ActiveRecord::Migration
  def up
    change_column :suppliers, :telephone, :string
    change_column :suppliers, :fax, :string
    change_column :suppliers, :email, :string
  end
end
