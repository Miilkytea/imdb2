Rails.application.routes.draw do
  root 'movies#index'

  resources :movies
  resources :actors, only: [:index, :new, :create, :edit]
end
