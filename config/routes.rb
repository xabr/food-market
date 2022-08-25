Rails.application.routes.draw do
  devise_for :users
  root to: "offers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/offers', to: 'offers#index'
  get '/offer/new', to: 'offers#new'
  get 'offers/:id', to: 'offers#show', as: :offer
  delete 'offers/:id', to: 'offers#destroy'
  get 'offers/:id/edit', to: 'offers#edit'
  patch 'offers/:id', to: 'offers#update'
  post '/offers', to: 'offers#create'
  get '/offers/:id/new', to: 'orders#new'
  get '/offers', to: 'orders#create'
end
