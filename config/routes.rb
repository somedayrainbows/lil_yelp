Rails.application.routes.draw do

  root "home#index"
  get 'home/index'
  get 'restaurants/create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :restaurants, only: [:new, :create]

end
