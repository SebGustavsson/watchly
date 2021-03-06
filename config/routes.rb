Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :watches do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:destroy]
  patch '/accept', to: 'bookings#accept', as: :accept
  patch '/reject', to: 'bookings#reject', as: :reject
end

