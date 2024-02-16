Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "cars#index"
  
  resources :cars
  resources :customers
  resources :rentals

  get 'cars/:id/delete', to: 'cars#delete', as: :delete_car

  get 'customers/:id/delete', to: 'customers#delete', as: :delete_customer
  
  get 'rentals/:id/delete', to: 'rentals#delete', as: :delete_rental

end
