Rails.application.routes.draw do
  get 'users/update'
  ActiveAdmin.routes(self)
  devise_for :users
  resources :users, only: [:update]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #Accessible to everyone
  get 'about', to: 'pages#about'
  get 'whatisinseason', to: 'pages#whatisinseason'
  get 'articles', to: 'pages#articles'

  get "profile", to: "pages#profile", as: "profile"





resources :producers do
  resources :comments, only: [:new, :create, :destroy]
  member do
    get :accept
    get :decline
  end
end

 #TO ADD ADMIN GEM
end
