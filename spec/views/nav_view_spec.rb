require 'rails_helper'

# https://relishapp.com/rspec/rspec-rails/v/5-0/docs/view-specs/view-spec

feature 'it displays the nav according to user state' do
  scenario 'display sign_up link when user not signed up' do
    visit root_path
    expect(page).to have_link 'Sign up', href: '/users/sign_up'
  end
  scenario 'display sign_in link when user not signed in' do
    visit root_path
    expect(page).to have_link 'Sign in', href: '/users/sign_in'
  end
  scenario 'display sign_out link when user_signed_id?' do
    visit root_path
    sign_up "bar@bazfoo.com", "Jacob Lross", "redfred123", "redfred123"    
    sign_out
    sign_in "bar@bazfoo.com", "redfred123"
    expect(page).to have_link 'Sign out', href: '/users/sign_out'
  end
end

