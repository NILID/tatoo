Rails.application.routes.draw do
  resources :profiles, only: [:index, :edit, :update]
  devise_for :users
  root 'profiles#index'
end
