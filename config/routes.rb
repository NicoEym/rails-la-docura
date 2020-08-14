Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :carts, only: [:create, :update, :show]
    resources :orders, only: [:create, :update, :show, :index]
  end

  resources :ingredients

  resources :cakes

end
