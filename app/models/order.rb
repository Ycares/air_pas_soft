class Order < ApplicationRecord
  belongs_to :weapon
  belongs_to :user

  validates :comment, length: { minimum: 6 }

end
