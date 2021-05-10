Rails.application.routes.draw do
  devise_for :users
  root 'rides#index'
  resources :rides, only: :index
end
