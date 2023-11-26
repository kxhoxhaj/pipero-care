Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :services, only: [:index]
  resources :packages, only: %i[index show]
  resources :tests, only: [:index]
  resources :dermoesthetics, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
