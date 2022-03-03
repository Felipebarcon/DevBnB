Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects do
    resources :orders, only: [:new, :create, :update]
  end

  resources :orders, only: :show

  get "orders", to: "orders#my_orders"

end
