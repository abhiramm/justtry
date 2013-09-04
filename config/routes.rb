Custom::Application.routes.draw do
  resources :custom_videos

  resources :performers

  resources :orders
  resources :item_categories
  #devise_for :performers
  devise_for :white_labels
  root :to => "orders#new"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  match 'get_image', to: 'home#get_image', via: [:get, :post]
  match "performers/update_amount", to: 'performers#update_amount', via: [:get, :post]
  #match "performers/price", to: 'performer#'
end
