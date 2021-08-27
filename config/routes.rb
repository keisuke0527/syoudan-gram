Rails.application.routes.draw do
  devise_for :users

  resources :opportunity, only: :index
end
