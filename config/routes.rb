Rails.application.routes.draw do
  resources :products
  root 'pages#home'
  get 'pages/home'
end
