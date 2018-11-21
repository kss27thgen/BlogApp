Rails.application.routes.draw do

  devise_for :users
  root "home#top"

  resources :blogs
  resources :users,only:[:show]
end
