Rails.application.routes.draw do
  root 'home#index'

  resources :users, only: [:new, :show, :edit, :update]

  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
  
end
