Rails.application.routes.draw do
  

  post 'physicians/create'
  post 'patients/create'
  resources :physicians do 
  	member do 
  		get 'generate_number_physician'
  	end
  end
  resources :patients do
  	member do 
  		get 'generate_number_patient'
  	end
  end
  resources :appointments 

  root 'appointments#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
