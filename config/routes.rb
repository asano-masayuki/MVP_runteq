Rails.application.routes.draw do
  get 'indicators/index'
  root to: 'homes#top'
  devise_for :users
  resources :indicators, only: [:index, :new, :create] do
    collection do
      get :new_data
      post :create_data
      get 'show_data'
    end
  end
  get "up" => "rails/health#show", as: :rails_health_check

end
