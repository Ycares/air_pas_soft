class Order < ApplicationRecord
  belongs_to :weapon
  belongs_to :user

  # TO DO : problem with validates for min length : how to deal with order to come ?(no comment ! )
  # validates :comment, length: { minimum: 6 }

  # TO DO : add a min value for total_price : must be > unit price !
  # validates :comment, length: { minimum: 6 }
end
