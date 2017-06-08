class User < ApplicationRecord
  validates :email, :password, presence: true, length: { in: 6..250 }
end
