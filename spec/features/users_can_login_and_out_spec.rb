require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can logout" do
    signup_and_login
    click_link "username-dropdown"
    click_link "Logout"
    expect(page).to have_content("Signed out successfully.")
  end

  scenario "Can log in" do
    signup_and_login
    click_link "username-dropdown"
    click_link "Logout"
    click_link("Login", match: :first)
    fill_in "user_email", with: "zucc@gmail.com"
    fill_in "user_password", with: "111111"
    click_button "Log in"
    expect(page).to have_content("Signed in successfully.")
  end
end