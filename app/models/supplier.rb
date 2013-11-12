class Supplier < ActiveRecord::Base
  has_one :user
  has_many :products
  
  validates :name, presence: true
end
