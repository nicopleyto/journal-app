Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :entries
  end
  root 'categories#index'
end