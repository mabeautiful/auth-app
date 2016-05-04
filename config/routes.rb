Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root to: 'home#index', as: 'home'
  end
  unauthenticated :user do
    root 'home#front'
  end
  resources :home, only: [:index]
end
