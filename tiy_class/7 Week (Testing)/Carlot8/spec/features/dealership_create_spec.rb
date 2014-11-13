require 'rails_helper'
# start a capybara file with a describe block

describe "create dealership", type: :feature, js: true do
    it "should allow creation of cars"do
    User.create({
        email: "test@example.com",
        password: "password",
        password_confirmation: "password"
        })
    visit root_path
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    click_button "Log in"
    expect(page).to have_content("Signed in successfully.")
    click_link "dealership_navbar"
    click_link "Create Dealership"
    fill_in "dealership_name", with: "John's Dealership"
    fill_in "dealership_description", with: "We sell Audi's"
    click_button "Submit"
    
  # it "should allow creation of cars"do
  #   visit '/'
  #   click 'Sign up'
  #   fill_in "Email", with: "test@example.com"
  #   fill_in "First name", with: "Nick"
  #   fill_in "Last name", with: "B"
  #   fill_in "Password", with: "1234asdf"
  #   fill_in "Password", with: "1234asdf"
  #   click_button "Sign up"
  #   expect(page).to have_content("Welcome! you have signed up succesfully.")
  end
end