Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users do, only: [:create, :new]
    resources :projects do, only: [:create, :new, :update, :destroy]
      resources :orders, only: [:new, :create, :destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
