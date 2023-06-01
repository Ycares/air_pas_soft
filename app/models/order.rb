class Order < ApplicationRecord
  belongs_to :weapon
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  # TO DO : add a method to validate start & end_date :
  # validates_numericality_of :end_date, :greater_than => :start_date

  # TO DO : problem with validates for min length : how to deal with order to come ?(no comment ! )
  # validates :comment, length: { minimum: 6 }

  # TO DO : add a min value for total_price : must be > unit price !
  # validates :comment, length: { minimum: 6 }


end
