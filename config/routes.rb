Rails.application.routes.draw do
  get 'users/owner'
  get 'reviews/new'
  get 'reviews/create'
  get 'bookings/show'
  get 'bookings/create'
  get 'bookings/new'
  get 'bookings/destroy'
  get 'bookings/edit'
  get 'bookings/update'
  get 'dashboards/show'
  get 'spaces/index'
  get 'spaces/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
