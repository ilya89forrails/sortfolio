require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe 'Projects', type: :feature do

  before(:each) do
    @user = FactoryGirl.create(:user)
    visit "http://localhost:3000/users/sign_in"
    fill_in('Username', with: 'defauls_user')
    fill_in('Password', with: 'password')
    click_button('Log in')
    expect(page).to have_content 'Find the right web designer for your next project.'
  end

  it 'Create new studio' do
    visit studios_new_path
    click_link "Add studio"
    fill_in 'Name', with: 'Name'
    fill_in 'City', with: 'San Francisco'
    fill_in 'Description', with: 'Default text'
    click_button 'Create Studio'
    expect(page).to have_content 'Studio was successfully created'
  end

  it 'Create new project' do
    click_link('Add project')
    fill_in 'Title', with: 'Title'
    fill_in 'Industry', with: 'Industry'
    fill_in 'Platform', with: 'Platform'
    fill_in 'Project type', with: 'Project type'
    fill_in 'Technology', with: 'Technology'
    click_button 'Create Studio'
    expect(page).to have_content 'Project was successfully created'
  end
end
