Rails.application.routes.draw do
  resources :lists do
    member do
    end
  end
  put 'update_position', to: 'lists#update_position'
  resource :items, only: [:update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
end
