Rails.application.routes.draw do
  root 'movies#index'

  resources :movies
  resources :actors, only: [:new, :create, :edit]
end
