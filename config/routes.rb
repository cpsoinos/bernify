Rails.application.routes.draw do
  root 'bernies#index'

  resources :bernies, only: [:index, :create, :show]
  resources :backgrounds, only: [:index, :create]
  resources :stickers, only: [:index, :create]

  post '/proxy/image', to: 'image_proxy#proxify'

end
