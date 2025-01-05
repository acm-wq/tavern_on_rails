Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :sessions, only: [:create]

  get 'register', to: 'users#new', as: 'register'
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  root "users#new"
end
