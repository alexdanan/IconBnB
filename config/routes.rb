Rails.application.routes.draw do
  # get 'icons/index'
  # get 'icons/show'
  resource :dashboard, only: [:show]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :icons do
    resources :bookings, only: [:new, :create]

  end
  resources :bookings, only: [:show, :edit, :update, :destroy, :confirm] do
    resources :reviews, only: [:new, :create]
  end
  
  resources :reviews, only: [:destroy]
# TODO: add routes for day_avabs
end
