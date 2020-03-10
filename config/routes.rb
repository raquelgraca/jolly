Rails.application.routes.draw do
  get 'appointments/bookings'
  get 'appointments/play_sessions'
  get 'appointments/play_spaces'
  get 'appointments/users'
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

  resources :play_sessions do
    collection do
      get "my_play_sessions"
    end
  end

  resources :play_sessions do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
