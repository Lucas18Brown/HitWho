Rails.application.routes.draw do
  devise_for :users
  root to: "hitmen#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :hitmen do
    resources :bookings, only: [:new, :create, :update, :destroy, :index, :edit, :show]
  end
  
  resources :user, only: [:show]
  
  get "/my_bookings", to: "bookings#show_bookings"
end
