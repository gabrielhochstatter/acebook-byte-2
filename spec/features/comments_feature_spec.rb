require 'rails_helper'

RSpec.feature "Comments", type: :feature do
  scenario "User can comment the posts and see his name and time" do
    signup_and_login
    create_dummy_post
    click_link "Comment"
    fill_in 'comment', with: "This is the comment"
    click_button 'Submit'
    click_link 'See comments'
    expect(page).to have_content("This is the comment")
    expect(page).to have_content("Commented by Zuccy Boi less than a minute ago")
  end
end
