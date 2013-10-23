class Stock < ActiveRecord::Base
  belongs_to :product
  validates :current_stock, numericality: true
end
