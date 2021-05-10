require 'rails_helper'

feature "visiter signs up to be a member" do
  scenario "signs up successfully" do
    visit root_path
    click_link "Sign up"
    fill_in "Email", with: "bar@bazfoo"
    fill_in "Name", with: "Jacob Lross"
    fill_in "Password", with: "redfred721"
    fill_in "Password confirmation", with: "redfred721"
    click_button "Join"
    expect(page).to have_css "h2", text: "Welcome back, Jacob Lross!"
  end
end

