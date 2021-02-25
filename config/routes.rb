Rails.application.routes.draw do
  get 'tweets/new'
  get 'tweets/create'
  get 'tweets/edit'
  get 'tweets/update'
  get 'tweets/destroy'
  root 'homepage#index'

  resources :users, only: [:new, :create, :show, :destroy] do
    resources :profile_attrs, only: [:new, :edit, :update]
  end
  post '/profile_attr', to: 'profile_attrs#create'
  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new', as: 'login'
  get '/signup', to: 'users#new', as: 'signup'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
