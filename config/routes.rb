Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'toppage', to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
  resources :tasks
end
