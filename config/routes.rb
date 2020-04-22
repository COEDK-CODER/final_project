Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "home#index", as: :home
  get "/signin", to: "sessions#new", as: :new_sessions
  post "/signin", to: "sessions#create", as: :sessions
  resources :users
  resources :menu
  resources :order
  delete "/signout", to: "sessions#destroy", as: :destroy_session
end
