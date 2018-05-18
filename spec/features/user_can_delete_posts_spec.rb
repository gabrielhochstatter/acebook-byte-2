require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can delete posts" do
    signup_and_login
    create_dummy_post
    click_link "Delete"
    expect(page).to_not have_content("the zucc")
  end
end