Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # resources :cars, only: :index
  resources :cars, except: :destroy do
    resources :bookings, only: %i[new create edit update]
  end
  resources :bookings, only: %i[destroy index]
  resources :cars, only: :destroy
  resources :users, only: :show
end
