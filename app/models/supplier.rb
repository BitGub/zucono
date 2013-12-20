class Supplier < ActiveRecord::Base
  has_many :products
  has_and_belongs_to_many :users, :join_table => :users_suppliers
  
  validates :name, presence: true

end

