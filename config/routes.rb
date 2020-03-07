Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :defenses, only: [:index, :show]
      resources :proceedings
      resources :medications
      resources :diseases
      resources :patients
      resources :medicines
    end
  end
end
