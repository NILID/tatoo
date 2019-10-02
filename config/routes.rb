Rails.application.routes.draw do
  resources :profiles, except: [:new, :create]
  devise_for :users
  root 'profiles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
