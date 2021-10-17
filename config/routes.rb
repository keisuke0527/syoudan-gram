Rails.application.routes.draw do
  devise_for :users
  
  root to: "opportunities#index"
  
  resources :opportunities, only: [:index, :new, :create,:show]
  resources :users, only: :show
end
