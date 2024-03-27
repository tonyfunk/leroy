Rails.application.routes.draw do
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  resources :products do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
end
