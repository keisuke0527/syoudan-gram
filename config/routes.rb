Rails.application.routes.draw do
  root 'opportunities#index'
  
  devise_for :users
  resources :opportunity, only: [:index, :new]

end
