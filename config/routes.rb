Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  namespace :api do
    # resources :scores, only: [:get, :post]
    
    get 'scores', to: 'scores#index'
    get 'scores', to: 'scores#create'
  end

  #Do not place any routes below this one
  get '*other', to: 'static#index'
end
