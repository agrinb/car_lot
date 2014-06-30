class Carmake < ActiveRecord::Base
  validates :make, presence: true
  validates :car_country, presence: true
  has_many :cars
  accepts_nested_attributes_for :cars
end
