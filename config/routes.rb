Rails.application.routes.draw do

  resources :harvest_lots
  resources :food_in_lots
  resources :lot_transports
  resources :lots
  resources :fry_farms
  resources :harvest_transports
  resources :food_in_harvests
  resources :foods
  resources :fresh_fishes
  resources :frozen_fishes
  resources :harvests
  resources :production_centers
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
