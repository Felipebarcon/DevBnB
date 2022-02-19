Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:create, :new]
  resources :projects do
    resources :orders, only: [:new, :create, :update]
    end
end
