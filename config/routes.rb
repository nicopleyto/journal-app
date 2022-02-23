Rails.application.routes.draw do
  resources :categories do
    resources :entries
  end
  root 'categories#index'
end