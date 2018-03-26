Rails.application.routes.draw do

  resources :users, only: [:index]
  get "/fetch_users" => 'users#fetch_users', as: 'fetch_users'
  root to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
