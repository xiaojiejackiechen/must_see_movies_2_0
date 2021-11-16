Rails.application.routes.draw do
  resources :bookmarks
  resources :reviews
  resources :directors
  resources :actors
  resources :characters
  resources :movies
  devise_for :profiles
  resources :profiles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
