class User < ActiveRecord::Base
  validates :first_name, :surname, presence: true
  validates :email, presence: true
end
