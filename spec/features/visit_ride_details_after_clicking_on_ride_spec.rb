require 'rails_helper'

feature "render ride details upon clicking it" do
  scenario "successfully" do 
    visit root_path
    current_user = FactoryBot.create(:user)
    sign_up "bam@bapfoo.com", "Jacob Lross", "redfred123", "redfred123" 
    add_new_ride("Brooklyn", "2021-07-21", "13:30", "19.5", "Leisure", "Small", "Light Foo Bap Ride")
    click_link "Light Foo Bap Ride"
    expect(page).to have_css "div.ride-view", text: "Light Foo Bap Ride"
  end
end
