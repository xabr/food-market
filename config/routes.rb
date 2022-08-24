Rails.application.routes.draw do
  devise_for :users
  root to: "offers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/offers', to: 'offers#index'
  get '/offer/new', to: 'offers#new'
  delete 'offers/:id', to: 'offers#destroy'
  post '/offers/', to: 'offers#create'
end
