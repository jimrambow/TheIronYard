require 'rails_helper'
# start a capybara file with a describe block

describe "user registration process", type: :feature, js: true do
  it "should allow user registration"do
    visit '/'
    click 'Sign up'
    fill_in "Email", with: "test@example.com"
    fill_in "First name", with: "Nick"
    fill_in "Last name", with: "B"
    fill_in "Password", with: "1234asdf"
    fill_in "Password", with: "1234asdf"
    click_button "Sign up"
    expect(page).to have_content("Welcome! you have signed up succesfully.")
  end
end