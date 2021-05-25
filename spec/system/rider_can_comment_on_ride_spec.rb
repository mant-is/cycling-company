require 'rails_helper'

RSpec.feature 'leave a comment' do
  
  let(:owner) { create(:user) }
  let(:rider) { create(:user) } 
  let(:rides) { [create((:ride), user_id: owner.id), create((:ride), user_id: rider.id)] }
  scenario 'allows a user to leave a comment on a ride they belong to' do
    creator = create(:user)
    rider = create(:user)
    ride = create(:ride, user_id: creator.id)
    puts "AT LINE 12"
    _ride = create(:ride, user_id: rider.id)
    visit root_path
    sign_in 'test@email.net', 'alpha_numeric'
    find("a[href='#{ ride_path(ride) }']").click
    #    click_link '/rides/2'
    fill_in 'comment-box', with: 'Are you ready!!?'
    click_button 'Add comment'
    expect(current_path).to have_content 'Are you ready!!?'
  end

end
