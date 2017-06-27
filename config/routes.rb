Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'movies' => 'movies#index'
  get 'movies/:id' => 'movies#show'

end
