Rails.application.routes.draw do
  devise_for :users
  root to: "offers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/offers', to: 'offers#index'
  # get '/offer/new', to: 'offers#new'

  # get '/offers/:id', to: 'offers#show', as: :offer
  # delete '/offers/:id', to: 'offers#destroy'
  # get '/offers/:id/edit', to: 'offers#edit', as: :editoffer
  # patch '/offers/:id', to: 'offers#update'

  # post '/offers', to: 'offers#create'
  # get '/order/:id/new', to: 'orders#new'
  # post '/orders/:offer_id', to: 'orders#create', as: :orders_create
  # get '/users/:id/orders', to: 'orders#show', as: :orders
  get '/users/:id', to: 'users#show', as: :users

  # Creating
  # patch '/users/:id/orders', to: 'orders#confirmed', as: :orders_confirmed
  # patch '/users/:id/orders/canceled', to: 'orders#canceled', as: :orders_canceled
  resources :offers do
    resources :orders, only: [:create]
  end
  resources :orders, only: [:update, :index, :destroy]
end
