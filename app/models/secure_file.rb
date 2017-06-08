class SecureFile < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  validates :filename, :content_type, presence: true, length: { in: 6..250 }
end
