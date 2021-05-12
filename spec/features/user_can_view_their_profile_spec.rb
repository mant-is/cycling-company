require 'rails_helper'

feature "user can visit their profile" do
  scenario "successfully" do
    visit root_path
    current_user = FactoryBot.create(:user)
    sign_in(current_user.email, current_user.password)
    click_link "Edit profile"
    expect(page).to have_content "#{ current_user.name }'s profile"
    expect(page).to have_content "Name: #{ current_user.name }"
    expect(page).to have_content "Email: #{ current_user.email }"
  end
end
