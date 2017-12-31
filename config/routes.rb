Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  # resources :pages;
  get 'pages/home'
  get 'pages/about'

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  root to: 'pages#home'
end
