Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :defenses, only: [:index, :show]
      resources :proceedings
      resources :medications
      resources :diseases
      resources :patients
      resources :medicines
    end
  end
end
