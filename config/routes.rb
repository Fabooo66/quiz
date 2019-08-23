Rails.application.routes.draw do
  # devise_for :users
  root 'stuff#index'
  resources :stuff do
  resources :comments, only: :create
  end
end
