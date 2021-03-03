Rails.application.routes.draw do
  root 'tweets#index'

  resources :users, only: [:new, :create, :show, :destroy] do
    resources :profile_attrs, only: [:new, :edit, :update]
    resources :tweets, only: [:new, :show, :edit, :update, :destroy]
  end

  post '/tweet', to: 'tweets#create'
  post '/profile_attr', to: 'profile_attrs#create'

  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new', as: 'login'
  get '/signup', to: 'users#new', as: 'signup'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
