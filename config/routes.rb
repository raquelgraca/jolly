Rails.application.routes.draw do
  get "my_play_sessions", to: "play_sessions#my_play_sessions", as: :my_play_sessions

  devise_for :users

  root to: 'play_sessions#index'
  root to: 'appointments#index'
  resources :appointments, only: [:index, :show]

  resources :play_spaces do
    resources :appointments, only: [:new, :create]
  end

  resources :appointments, except: [:new, :create] do
    resources :play_sessions, only: [:new, :create]
  end

  resources :play_sessions, except: [:new, :create] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:new, :create]

  resources :orders, only: [:show, :create] do
  resources :payments, only: :new
end

  mount StripeEvent::Engine, at: '/stripe-webhooks'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



