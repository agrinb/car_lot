
FactoryGirl.define do
  factory :carmake do
    #sequence(:make) { |n| "Manufacturer #{n}" }
    make "BMW"
    car_country "Italy"
  end
end
