Rails.application.routes.draw do
  resources :studios do
    resources :projects
  end

  devise_for :users
  root 'studios#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
