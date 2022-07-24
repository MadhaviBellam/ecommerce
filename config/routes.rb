Rails.application.routes.draw do
  resources :categories
  #get 'cards/show'
  # get 'shops/index'
  # get 'shops/show'
  resources :products
  resources :shops,only: [:index, :show]
  resources :orderitems
  resource :cards,only: [:show]
  root 'shops#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
