Rails.application.routes.draw do
  root 'homepage#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new', as: 'login'
  get '/signup', to: 'users#new', as: 'signup'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
