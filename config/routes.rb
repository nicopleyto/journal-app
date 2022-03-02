Rails.application.routes.draw do
  get 'users/entries'

  devise_for :users 

  resources :categories do
    resources :entries
  end
  
  root 'categories#index'
end