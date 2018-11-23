Rails.application.routes.draw do

  devise_for :users
  root "home#top"

  resources :blogs do
    resources :comment,only:[:creat]
  end
  resources :users,only:[:show]
end
