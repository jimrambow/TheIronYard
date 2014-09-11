require 'rails_helper'

describe "user registration", type: :feature, js: true do
  it "should allow user registration" do
    visit root_path
    click_link "Log In"
    click_link "Sign up"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_content("Welcome! You have signed up successfully.")
    expect(page).to have_content("Log Out")
    expect(page).to have_content("Edit")
    
  end
end