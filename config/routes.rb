Rails.application.routes.draw do
  get 'errors/show'
  resources :profiles, only: [:index, :edit, :update] do
    collection do
      get :more
    end
  end
  devise_for :users, :controllers => { :registrations => "registrations" }

  %w[404 422 500].each do |code|
    get code, to: 'errors#show', code: code
  end

  root 'profiles#index'
end
