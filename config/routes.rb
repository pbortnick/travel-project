Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get '/auth/facebook', to: redirect('/users/auth/facebook')

  resources :agents do
    resources :destinations, only: [:show]
  end

  resources :destinations
  resources :users

  root "application#home"

  get '/trip' => "application#trip"

end
