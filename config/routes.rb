Rails.application.routes.draw do

  resources :fry_farms
  resources :sowing_transfers
  resources :harvest_lots
  resources :lots
  resources :lot_foods
  resources :foods
  resources :harvest_foods
  resources :harvest_transfers
  resources :production_centers
  resources :harvests
  resources :freshes
  resources :frozens
  resources :dispatches
  resources :clients
  # Home controller routes.
  root   'home#index'
  get    'auth'            => 'home#auth'

  # Get login token from Knock
  post   'user_token'      => 'user_token#create'

  # User actions
  get    '/users'          => 'users#index'
  get    '/users/current'  => 'users#current'
  post   '/users/create'   => 'users#create'
  patch  '/user/:id'       => 'users#update'
  delete '/user/:id'       => 'users#destroy'

end
