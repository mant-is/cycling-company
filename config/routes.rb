Rails.application.routes.draw do
  devise_for :users
  root 'rides#index'
  resources :user do
    resources :rides, only: [:index, :new, :create]
  end
end
