Rails.application.routes.draw do
  resources :spaces, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:create]
  end

  resources :bookings, except: [:new, :create, :index] do
    resources :reviews, only: [:new, :create]
  end

  resources :users, only: [:owner]
  resource :dashboard, only: [:show]

  get "/spaces/:space_id/bookings/:id/receipt" => "bookings#receipt", as: "receipt"
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
