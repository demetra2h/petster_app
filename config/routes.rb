Rails.application.routes.draw do
  root "pictures#index"

  get "about/" => "pages#about"

  get "pictures/" => "pictures#index"

  get "pictures/new" => "pictures#new", as: :new_picture

  post "pictures/" => "pictures#create"

  get "pictures/:id" => "pictures#show", as: :picture

  get "pictures/:id/edit" => "pictures#edit", as: :edit_picture

  patch "pictures/:id" => "pictures#update"

  delete "pictures/:id" => "pictures#destroy"
  #resources :pictures, only: [:index, :new, :create, :edit, :update]

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  get "/login", to: "sessions#new"

end
