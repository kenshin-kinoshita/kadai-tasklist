Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  get 'login', to: 'sessions#create'
  get 'login', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
  resources :tasks
end
