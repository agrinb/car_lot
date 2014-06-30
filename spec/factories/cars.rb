# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    color "black"
    year "2014"
    mileage 1234
    description "This is a great car"
    carmake
    #association :carmake, factory: :carmake
  end
end

