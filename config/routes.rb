Rails.application.routes.draw do
  # get 'icons/index'
  # get 'icons/show'
  # get 'icons/new'
  # get 'icons/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :icons do
    resources :bookings, only: [:new, :create]

  end
  resources :bookings, only: [:show, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end

# TODO: add routes for day_avabs
end
