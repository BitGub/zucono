class AddWebsiteFeildToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :website, :string
  end
end
