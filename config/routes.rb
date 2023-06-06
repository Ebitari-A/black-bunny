Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "clients", to: "reservations#clients"
  get "clients", to: "reservations#client-show"

  get "dashboard", to: "restaurants#dashboard"

  resources :reservations, only: [:index, :show, :new, :create, :update]

end
