Custom::Application.routes.draw do
  resources :performers

  resources :orders
  resources :item_categories
  #devise_for :performers
  devise_for :white_labels
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  #resources :performers
  match 'get_image', to: 'home#get_image', via: [:get, :post]
end
