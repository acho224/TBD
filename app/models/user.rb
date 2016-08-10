class User < ApplicationRecord
  has_secure_password
  has_many :tops
  has_many :bottoms
end
