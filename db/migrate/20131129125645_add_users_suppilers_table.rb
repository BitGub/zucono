class AddUsersSuppilersTable < ActiveRecord::Migration
  def change
    remove_column :users, :supplier_id
    
    create_table :users_suppliers do |t|
      t.belongs_to :user
      t.belongs_to :supplier
    end
  end
end
