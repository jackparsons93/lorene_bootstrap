Rails.application.routes.draw do
  resources :customers
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/services'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
