Rails.application.routes.draw do
  devise_for :users
  root 'flats#index'
  resources :users
  resources :flats do
    resources :bookings
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
