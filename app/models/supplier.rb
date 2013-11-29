class Supplier < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_suppliers
  has_many :products
  accepts_nested_attributes_for :users
  
  validates :name, presence: true
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
