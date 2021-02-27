Rails.application.routes.draw do
  root 'tweets#index'

  resources :tweets, only: [:new, :create, :show, :edit, :update, :destroy]

  resources :users, only: [:new, :create, :show, :destroy] do
    resources :profile_attrs, only: [:new, :create, :edit, :update]
  end
  
  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new', as: 'login'
  get '/signup', to: 'users#new', as: 'signup'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
