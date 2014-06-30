class Car < ActiveRecord::Base
   validates :carmake_id, presence: true
   validates :year, presence: true, numericality: { greater_than_or_equal_to: 1920 }
   validates :color, presence: true
   validates :mileage, presence: true

   belongs_to :carmake
end

