Rails.application.routes.draw do
  devise_for :users #, :controllers => {registration: 'user/registrations'}
  resources :cursos
  resources :usuarios
  root to: 'usuarios#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
