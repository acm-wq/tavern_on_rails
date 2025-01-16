Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :rooms, only: [:index, :show]

  get 'admin/dashboard', to: 'admin#dashboard', as: 'admin_dashboard'
  namespace :admin do
    resources :rooms, only: [:new, :create, :index]
    resources :users
  end

  get 'register', to: 'users#new', as: 'register'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  root "users#new"
end
