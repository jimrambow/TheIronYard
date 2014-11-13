require 'rails_helper'

describe "create dealership", type: :feature, js: true do
  it "should allow creation of dealership" do
    visit root_path
    click_link 'Sign up'    
    fill_in "Email", with: "test@example.com"
    fill_in "First name", with: "Nick"
    fill_in "Last name", with: "B"
    fill_in "Password", with: "1234asdf"
    fill_in "Password confirmation", with: "1234asdf"
    click_button "Sign up"
    visit root_path
    click_link "dealership_navbar"
    click_link "Create Dealership"
    fill_in "dealership_name", with: "John's Dealership"
    fill_in 'dealership_description', with: "We sell Audi's"
    click_button "Submit"
    expect(page).to have_content("John's Dealership")
    expect(page).to have_content("We sell Audi's")
  end
end