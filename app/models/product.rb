class Product < ActiveRecord::Base
  has_many :stocks
  validates :product_name, :presence => true
  validates :minimum_stock, numericality: true 
  validates :unit_price, :format => { :with => /\A\d+??(?:\.\d{0,2})?\z/ }, numericality: true
  after_create :default_current_stock
  default_scope { order ('product_name ASC') }
  
  private
  	def default_current_stock
  	Stock.create!(:product_id => self.id, :current_stock => 0)
  	end
end
