class User < ActiveRecord::Base
  belongs_to :role
  has_and_belongs_to_many :suppliers, :join_table => :users_suppliers
  
  before_save { self.email = email.downcase }
  
  validates :role_id, presence: true
  validates :first_name, :surname, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  
  has_secure_password
  validates :password, length: { minimum: 6 }
end