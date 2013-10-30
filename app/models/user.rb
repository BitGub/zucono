class User < ActiveRecord::Base
  validates :first_name, :surname, presence: true
end
