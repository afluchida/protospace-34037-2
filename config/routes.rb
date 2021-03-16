Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: 'prototypes#index'
  resources :users, only: [:index, :post, :new, :create, :destroy, :edit, :show]
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy]do
  resources :comments, only: [:create, :show]
end
end
