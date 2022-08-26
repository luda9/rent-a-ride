Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # resources :cars, only: :index
  resources :cars do
    resources :bookings, only: %i[new create edit update]
  end
  resources :bookings, only: %i[destroy index]

  resources :users, only: :show
end
