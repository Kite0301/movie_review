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
  get 'movies/:id/reviews' => 'movies#reviews'
  get 'movies/:id' => 'movies#show'

  get 'reviews/:movie_id/new' => 'reviews#new'
  post 'reviews/:movie_id/create' => 'reviews#create'
  get 'reviews/:movie_id/edit' => 'reviews#edit'
  post 'reviews/:movie_id/update' => 'reviews#update'
  post 'reviews/:movie_id/destroy' => 'reviews#destroy'

end
