Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
