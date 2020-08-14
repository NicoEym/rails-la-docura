Rails.application.routes.draw do
  get 'carts/new'
  get 'carts/edit'
  get 'orders/index'
  get 'orders/new'
  get 'orders/create'
  get 'orders/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :ingredients

  resources :cakes

end
