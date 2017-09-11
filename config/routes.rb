Rails.application.routes.draw do
  devise_for :users

  resources :agents
  resources :destinations
  resources :users

  root "application#home"

  get '/trip' => "application#trip"

  get '/auth/facebook/callback' => 'sessions#create'

end
