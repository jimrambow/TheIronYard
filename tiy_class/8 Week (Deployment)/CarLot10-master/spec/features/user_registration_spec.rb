require 'rails_helper'

describe "user registration", type: :feature, js: true do
  it "should allow user registration" do
    visit root_path
    click_link 'Sign up'
    fill_in "Email", with: "test@example.com"
    fill_in "First name", with: "Nick"
    fill_in "Last name", with: "B"
    fill_in "Password", with: "1234asdf"
    fill_in "Password confirmation", with: "1234asdf"
    click_button "Sign up"
    expect(page).to have_content("Welcome! You have signed up successfully.")
    expect(page).to have_content("Nick B")
    expect(page).to have_content("Log Out")
    expect(page).not_to have_content("Log In")
    # expect(page).to have_content("Log Ifdsaklfjdsaklfjadkls;n")
  end
end