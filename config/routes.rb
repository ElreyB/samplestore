Rails.application.routes.draw do
  root :to => 'products#index'

  devise_for :users

  resources :products do
    resources :order_items
  end

  resources :orders do
    resources :order_items
  end

  resources :order_items

  resource :cart, only: [:show]
end
