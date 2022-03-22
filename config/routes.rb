Rails.application.routes.draw do
  get '/entries', to: "user_entries#index"
  get '/new_entry', to: "user_entries#new"
  post '/entries', to: "user_entries#create"

  devise_for :users 

  resources :categories do
    resources :entries
  end

  root 'categories#index'
end