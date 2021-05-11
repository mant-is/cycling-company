require 'rails_helper'

feature "display a list of upcoming rides" do
  scenario "when user is signed in" do
    visit root_path
    sign_up "bam@bapfoo.com", "Jacob Lross", "redfred123", "redfred123" 
    sign_out
    sign_in "bam@bapfoo.com", "redfred123"
    expect(page).to have_content "Location"
  end 
end 
