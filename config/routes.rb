Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users do, only: [:create, :new]
  end
  resources :projects do
    resources :orders, only: [:new, :create, :update]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
