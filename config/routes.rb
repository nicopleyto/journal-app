Rails.application.routes.draw do
  get '/entries', to: "user_entries#index"

  devise_for :users 

  resources :categories do
    resources :entries
  end

  root 'categories#index'
end