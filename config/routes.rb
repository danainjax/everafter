Rails.application.routes.draw do
  resources :excusers

  get '/api/ping', to: 'excusers#ping'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
