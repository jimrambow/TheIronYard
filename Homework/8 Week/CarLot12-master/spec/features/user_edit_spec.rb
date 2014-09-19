require "rails_helper"

describe "edit user", type: :feature, js: true do
  it "should allow editing of user" do
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
    visit root_path
    click_link 'Edit'
    fill_in "Email", with: 'test2@example.com'
    fill_in "First name", with: "Reynolds"
    fill_in "Last name", with: "Is cooler"
    fill_in "Password", with: "2345asdf"
    fill_in "Password confirmation", with: "2345asdf"
    fill_in "Current password", with: "1234asdf" 
    click_button 'Update'
    visit root_path
    # expect(page).to have_content("test2@example.com")
    expect(page).to have_content("Reynolds Is cooler")
  #   expect(page).to have_content("1234asdf")
    end
end



