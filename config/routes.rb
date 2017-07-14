Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/" => "home#top"
  get "about" => "home#about"

  get "signup" => "users#new"
  post "users/create" => "users#create"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  get "users/:id" => "users#show"
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'

  get 'movies' => 'movies#index'
  get 'movies/:id/reviews' => 'movies#reviews'
  get 'movies/:id' => 'movies#show'

end
