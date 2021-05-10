require 'rails_helper'

feature "user visits homepage" do
  scenario "successfully" do 
    visit root_path
    expect(page).to display_welcome
  end
end
