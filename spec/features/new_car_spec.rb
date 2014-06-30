require 'rails_helper'

feature 'user fills the car form', %Q{
 As a car salesperson
  I want to record a newly acquired car
  So that I can list it in my lot
} do

# Acceptance Criteria
# I must specify the manufacturer, color, year, and mileage of the car.
# Only years from 1920 and above can be specified.
# I can optionally specify a description of the car.
# If I enter all of the required information in the required formats, the car is recorded and I am presented with a notification of success
# If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
# Upon successfully creating a car, I am redirected back to the index of cars.


  scenario 'user submits new car to inventory' do
    carmake =  FactoryGirl.create(:carmake)
    car = FactoryGirl.create(:car, carmake: carmake)

    visit new_carmake_car_path
    fill_in 'Car Make', with: car.make
    fill_in 'Color', with: car.color
    fill_in 'Year', with: car.year
    fill_in 'Mileage', with: car.mileage
    fill_in 'Description', with: car.description
    click_on 'Submit'


    expect(page).to have_content car.make
    expect(page).to have_content car.color
    expect(page).to have_content car.year
    expect(page).to have_content car.mileage


  end
end
