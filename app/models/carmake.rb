class Carmake < ActiveRecord::Base
  validates :make, presence: true
  has_many :cars
  accepts_nested_attributes_for :cars
end
