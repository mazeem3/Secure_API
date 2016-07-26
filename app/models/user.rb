class User < ApplicationRecord
  has_many :users
  has_secure_password

end
