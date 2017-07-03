Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "signup" => "users#new"
  post "users/create" => "users#create"
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'
  get "users/:id" => "users#show"

  get 'movies' => 'movies#index'
  get 'movies/:id' => 'movies#show'

end
