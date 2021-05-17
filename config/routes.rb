Rails.application.routes.draw do
  devise_for :users
  root 'rides#index'
  resources :users do
    resources :rides, only: [:index, :new, :create, :destroy]
  end

  resources :rides, only: :show
end
