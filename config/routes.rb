Rails.application.routes.draw do
  # setting routes with order ( controller/file_name ), using it for the specified.
  get 'auctions/create'
  get 'auctions/new'
  get "auctions" => "auctions/create"
  get 'home/show'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'user_profile/show'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :auctions , only: [:create, :new]
  resource  :home, only: [:show]
  resources :sessions, only: [:create, :destroy]
  resources :user_profile , only: [:show]
  root to: "home#show"
end
