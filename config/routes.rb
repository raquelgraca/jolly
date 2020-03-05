Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :play_spaces
  resources :appointments
  resources :play_sessions do
    collection do
      get "my_play_sessions"
    end
  end
  resources :bookings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
