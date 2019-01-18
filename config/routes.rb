Rails.application.routes.draw do

  resources :invoices, only:[:index,:show]
  resources :customers
  resources :products
  root 'welcome#index'
  resources :articles do
    resources :comments
  end
  resources :users do
    resources :areas
  end
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions', to: 'sessions#index'
  resources :users
  get 'welcome/index'
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
