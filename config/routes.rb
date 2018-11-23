Rails.application.routes.draw do

  get 'comments/create'

  devise_for :users
  root "home#top"

  resources :blogs
  resources :users,only:[:show]
end
