Rails.application.routes.draw do
  root "pictures#index"

  resources :pictures
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get "/login", to: "sessions#new"
  get "/about", to: "pages#about"
end
