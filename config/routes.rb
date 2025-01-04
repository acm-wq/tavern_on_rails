Rails.application.routes.draw do
  resources :users, only: [:create]

  get 'register', to: 'users#new', as: 'register'

  # Defines the root path route ("/")
  root "users#new"
end
