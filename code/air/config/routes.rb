OneWayAir::Application.routes.draw do

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :users



  root to: 'flights#index'

end
