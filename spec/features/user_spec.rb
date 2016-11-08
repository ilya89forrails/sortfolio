require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe 'Users', type: :feature do
 

  it 'Create user' do
    visit "http://localhost:3000/users/sign_up"
    fill_in('Email', with: 'user@server.com')
    fill_in('Username', with: 'default_user')
    fill_in('Password', with: 'password')
    fill_in('Password confirmation', with: 'password')
    click_button('Sign up')
    expect(page).to have_content 'Find the right web designer for your next project.'
  end

end