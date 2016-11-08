require 'rails_helper'

describe 'Login' do
  it 'User can login' do
    @user = FactoryGirl.create(:user)
    visit "http://localhost:3000/users/sign_in"
    fill_in('Username', with: 'defauls_user')
    fill_in('Password', with: 'password')
    click_button('Log in')
    expect(page).to have_content 'Find the right web designer for your next project.'
  end
end