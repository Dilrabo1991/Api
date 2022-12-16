Rails.application.routes.draw do
  resources :comics
  get 'users/create'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
  # Defines the root path route ("/")
  # root "articles#index"
end
