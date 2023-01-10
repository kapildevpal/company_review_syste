Rails.application.routes.draw do
  get 'reviews/index'
  get 'companies/index'
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'companies#index'
  resources :users
  resources :companies do
    resources :reviews
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
