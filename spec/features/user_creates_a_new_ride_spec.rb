require 'rails_helper'

feature "User creates a new ride" do
  scenario "successfully" do 
    visit root_path
    sign_up "bam@bapfoo.com", "Jacob Lross", "redfred123", "redfred123" 
    click_link "Add a new ride"
    fill_in "Location", with: "Brooklyn"
    fill_in "Level", with: "Leisure"
    fill_in "Distance", with: "19.5"
    fill_in "Date", with: "07/21/2021"
    fill_in "Time", with: "13:30"
    fill_in "Group size", with: "Small"
    fill_in "Title", with: "Light Foo Bap Ride"
    click_button "Create ride"
    expect(page).to have_css "div", text: "notice: Ride created successfully!!"
  end
end 
