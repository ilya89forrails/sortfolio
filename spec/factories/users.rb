FactoryGirl.define do
  factory :user do
    email 'user@server.com'
    username 'user'
    password 'password'
    password_confirmation 'password'
  end
end