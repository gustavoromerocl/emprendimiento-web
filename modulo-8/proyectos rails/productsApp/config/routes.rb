Rails.application.routes.draw do
  resources :usuarios
  resources :products

  root 'products#index'
end
