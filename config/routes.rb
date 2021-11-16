Rails.application.routes.draw do
  resources :spaces, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:new, :create, :index] do
    resources :reviews, only: [:new, :create]
  end

  resources :users, only: [:owner]
  resources :dashboards, only: [:show]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
