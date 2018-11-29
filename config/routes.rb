Rails.application.routes.draw do

  devise_for :users
  root "home#top"

  resources :blogs do
    resources :comments,only:[:create]
  end
  resources :users,only:[:show]
end

