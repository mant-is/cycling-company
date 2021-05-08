require 'rails_helper'

feature "user visits homepage" do
  scenario "successfully" do 
    visit root_path
    expect(page).to have_css "h1.welcome", text: "Welcome to Cycling Company"
  end
end
