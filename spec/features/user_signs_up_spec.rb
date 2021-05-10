require 'rails_helper'

feature "visiter signs up to be a member" do
  scenario "signs up successfully" do
    visit root_path
    click_link "Join"
    fill_in "Email", with: "bar@bazfoo"
    fill_in "Name", with: "Jacob Lross"
    click_button "Join"
    expect(page).to have_css "h2.welcome", text: "Jacob Lross"
  end
end

