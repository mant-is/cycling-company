require 'rails_helper'

feature "user can delete a ride they created" do
  scenario "successfully" do
    visit root_path
    sign_up "bam@bapfoo.com", "Jacob Lross", "redfred123", "redfred123" 
    add_new_ride("Brooklyn", "07/21/2021", "12:30:00", "19.5", "Leisure", "Small", "Light Foo Bap Ride")
    expect(page).to display_successful_ride_creation 
    click_link "Light Foo Bap Ride"
    click_link "Delete ride"
    expect(page).to have_content "Ride has been successfully deleted"
  end
end

