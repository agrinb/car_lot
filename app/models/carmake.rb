class Carmake < ActiveRecord::Base
  validates :make, presence: true

  has_many :cars
end
