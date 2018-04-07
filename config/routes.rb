Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  get    '/signin',   to: 'sessions#new'
  post   '/signin',   to: 'sessions#create'

  resources :users
end
