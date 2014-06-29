require 'rails_helper'

feature 'user fills out make form', %Q{
  As a car salesperson
  I want to record a car manufacturer
  So that I can keep track of the types of cars found in the lot
} do



    make = CarMake.new(attrs)

    visit new_car_path
    fill_in 'Car Make', with: 'Ford'
    click_on 'Submit'


    expect(page).to have_content 'Ford'

end
