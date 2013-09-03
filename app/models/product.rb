class Product < ActiveRecord::Base
  has_many :stocks
  validates :product_name, :presence => true
  
end
