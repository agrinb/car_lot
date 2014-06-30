require 'rails_helper'

feature 'user fills out make form', %Q{
  As a car salesperson
  I want to record a car manufacturer
  So that I can keep track of the types of cars found in the lot
} do

  scenario 'user submits new carmake' do

    make = Carmake.new

    visit 'carmakes/new'
    fill_in 'Car Make', with: 'Ford'
    fill_in 'Country', with: 'USA'
    click_on 'Submit'


    expect(page).to have_content 'Ford'
  end
end
