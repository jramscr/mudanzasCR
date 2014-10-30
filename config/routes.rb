Rails.application.routes.draw do
  get 'auction/new'

  get 'auction/create'

  get 'auction/read'

  get 'auction/destroy'

  get 'auction/update'

  # Routes for the controllers.
   get 'home/show'
   get 'sessions/create'
   get 'sessions/destroy'
   get 'user_profile/show'
   # Routes for the google oauth2.
   get 'auth/:provider/callback', to: 'sessions#create'
   get 'auth/failure', to: redirect('/')
   get 'signout', to: 'sessions#destroy', as: 'signout'
   get 'profile', to: 'user_profile#show', as: 'profile'
   resource :home, only: [:show]
   resources :auction
   resources :sessions, only: [:create, :destroy]
   root to: "home#show"
end
