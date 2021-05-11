require 'rails_helper'

feature "visitor signs up to be a member" do
  scenario "signs up successfully" do
    visit root_path
    sign_up "bar@bazfoo.com", "Jacob Lross", "redfred123", "redfred123"    
    expect(page).to greet_user "Jacob Lross"
    sign_out
  end
end

