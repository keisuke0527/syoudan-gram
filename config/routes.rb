Rails.application.routes.draw do
  root 'opportunities#index'
  
  devise_for :users
  resources :opportunities, only: [:index, :new, :create]

end
