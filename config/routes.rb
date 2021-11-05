Rails.application.routes.draw do
  devise_for :users
  
  root to: "opportunities#index"
  
  resources :opportunities do
    resources :comments, only: :create
  end 
   resources :users, only: [:index ,:show]
end
