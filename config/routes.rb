Rails.application.routes.draw do
  resources :profiles, only: [:index, :edit, :update] do
    collection do
      get :more
    end
  end
  devise_for :users
  root 'profiles#index'
end
