Rails.application.routes.draw do

scope '(:locale)', locale: /en|pt|es/ do
devise_for :users, :paths => 'users', controllers: {registrations: 'users/registrations'}

  root to: 'pages#home'

  # Sidekiq Web UI, only for admins.
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end


  get "my_play_sessions", to: "play_sessions#my_play_sessions", as: :my_play_sessions

  resources :users, only: [:show] do
    resources :reviews, only: [:index, :new, :create]
    resources :addresses, only: [:index, :new, :create]
  end

  resources :addresses, only: [:edit, :update, :destroy]

  resources :reviews, only: [:edit, :update]

  resources :play_spaces do
    resources :appointments, only: [:new, :create]
    resources :addresses, only: [:index, :new, :create]
  end

  resources :appointments, except: [:new, :create] do
    resources :play_sessions, only: [:new, :create]
  end

  resources :play_sessions, except: [:new, :create] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:new, :create]

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new]
  end

  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end



