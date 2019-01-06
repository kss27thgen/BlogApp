Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get '/users/sign_in2' => 'devise/sessions#new', as: :new_user_session2
  end

  resources :blogs do
    resources :comments,only:[:create]
  end
  resources :users,only:[:show, :index]
  get "home/vue" => "home#vue"
  root "home#top"
end

