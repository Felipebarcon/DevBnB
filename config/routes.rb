Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users do
    resources :projects do
      resources :orders, only: [:post, :patch]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
