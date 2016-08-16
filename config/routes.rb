Rails.application.routes.draw do
  root 'users#index'
  get 'users/show'

  get '/signup' => 'users#new'
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :session

  get '/weather' => 'weathers#index'

  get '/closet' => 'closets#index'
  post '/closet' => 'closets#create'
  delete '/closet' => 'closets#destroy'
  resources :closets


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
