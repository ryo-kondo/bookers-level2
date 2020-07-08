Rails.application.routes.draw do
  root 'homes#index'
  get 'home/about', to: 'homes#about'
  # devise_for :users, :controllers => {
  #   :registrations => 'users/registrations',
  #   :sessions => 'users/sessions'
  # }

  # devise_scope :user do
  #   get "users/:id", :to => "users/registrations#detail"
  #   get "signup", :to => "users/registrations#new"
  #   get "login", :to => "users/sessions#new"
  #   get "logout", :to => "users/sessions#destroy"
  # end
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users
  resources :books
end
