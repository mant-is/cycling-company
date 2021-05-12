require 'rails_helper'

feature "User creates a new ride" do
  scenario "successfully" do 
    visit root_path
    sign_up "bam@bapfoo.com", "Jacob Lross", "redfred123", "redfred123" 
    add_new_ride("Brooklyn", "07/21/2021", "13:30", "19.5", "Leisure", "Small", "Light Foo Bap Ride")
    expect(page).to display_successful_ride_creation
  end
end 
