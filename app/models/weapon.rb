class Weapon < ApplicationRecord
  has_many :orders
  belongs_to :owner, class_name: "User"
  validates :name, presence: true
  validates :details, presence: true, uniqueness: true
  validates :origin_country, presence: true
  validates :era_of_use, presence: true
  validates :category, presence: true
  validates :weapon_type, presence: true
  validates :price, presence: true

  has_one_attached :photo
end
