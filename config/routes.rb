Rails.application.routes.draw do
  root 'main#welcome'
  get 'users/new'
  get 'main/welcome'
  get 'pages/home'
  get '/signup', to: 'users#new'
  resources :products
  resources :users
end
