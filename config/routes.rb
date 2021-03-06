Rails.application.routes.draw do
  root 'main#welcome'

  get 'sessions/new'
  get 'users/new'
  get 'main/welcome'
  get 'pages/home'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'

  resources :products
  resources :users

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
