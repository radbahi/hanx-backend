Rails.application.routes.draw do
  post "/login", to: "users#show"
  resources :carts_items
  resources :movies
  resources :items
  resources :carts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
