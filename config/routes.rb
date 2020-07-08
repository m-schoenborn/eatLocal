Rails.application.routes.draw do
  get 'users/update'
  ActiveAdmin.routes(self)
  devise_for :users
  resources :users, only: [:update] do
    resources :favorites, only: [:create, :destroy]
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #Accessible to everyone
  get 'about', to: 'pages#about'
  get 'whatisinseason', to: 'pages#whatisinseason'
  get 'articles', to: 'pages#articles'
  get 'producer_profile', to: 'pages#producer_profile'

  get '/404', to: "errors#not_found"
  get '/422', to: "errors#unacceptable"
  get '/500', to: "errors#internal_error"

  get "profile", to: "pages#profile", as: "profile"

  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
    collection do
      get 'create_chat'
    end
  end

resources :producers do
  resources :comments, only: [:new, :create, :destroy]
  resources :products, only: [:new, :create]
  resources :producer_news, only: [:new, :create]
  member do
    get :accept
    get :decline
  end
end


 #TO ADD ADMIN GEM
end
