Rails.application.routes.draw do
  resources :defenses
  resources :proceedings
  resources :medications
  resources :diseases
  resources :patients
  resources :medicines
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
