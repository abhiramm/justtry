Custom::Application.routes.draw do
  devise_for :white_labels
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end