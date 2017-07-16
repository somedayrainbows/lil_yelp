Rails.application.routes.draw do

  get 'home/index'

  get 'restaurants/create'

  root "home#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :restaurants, only: [:new, :create]

end
