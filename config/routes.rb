Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects do
    resources :orders, only: [:new, :create, :update, :edit]
  end

  resources :orders, only: :show

  get "/my_orders", to: "orders#my_orders"

end
