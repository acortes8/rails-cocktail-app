Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails do
    post :add_ingredient, on: :collection
    collection do
      get 'search'
    end
  end
  resources :ingredients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
