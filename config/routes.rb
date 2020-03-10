Rails.application.routes.draw do
  devise_for :users

  root to: 'play_sessions#index'

  resources :play_spaces do
    resources :appointments, only: [:new, :create]
  end
  resources :appointments, except: [:new, :create]

  resources :appointments do
    resources :play_sessions, only: [:new, :create]
  end
  resources :play_sessions, except: [:new, :create]


  get "my_play_sessions", to: "play_sessions#my_play_sessions", as: "my_play_sessions"



  resources :play_sessions do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
