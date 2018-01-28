Rails.application.routes.draw do
  

  post 'physicians/create'
  post 'patients/create'
  resources :physicians
  resources :patients
  resources :appointments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
