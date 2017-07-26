Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/" => "home#top"

  get "signup" => "users#new"
  post "users/create" => "users#create"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  get "users/:id" => "users#show"
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'

  get 'movies' => 'movies#index'
  get 'movies/search' => 'movies#search'
  get 'movies/:id' => 'movies#show'

  get 'movies/:movie_id/reviews' => 'reviews#index'
  get 'movies/:movie_id/reviews/new' => 'reviews#new'
  post 'movies/:movie_id/reviews/create' => 'reviews#create'
  get 'reviews/:id/edit' => 'reviews#edit'
  post 'reviews/:id/update' => 'reviews#update'
  post 'reviews/:id/destroy' => 'reviews#destroy'

end
