Rails.application.routes.draw do
  root 'bernies#index'

  resources :bernies, only: [:index]
  resources :backgrounds, only: [:index, :create]
  resources :stickers, only: [:index, :create]

end
