Rails.application.routes.draw do
  root "pictures#index"

  resources :pictures, only: [:index, :new, :create, :edit, :update]

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  get "/login", to: "sessions#new"

end
