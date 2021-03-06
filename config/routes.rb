Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  root to: 'pages#home'
  resources :trips, only: [ :index, :create, :new, :show] do
    resources :bookings, only: [:new, :create]
    end
  resources :users, only: [:show] do
    member do
      get :dashboard
      end
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
