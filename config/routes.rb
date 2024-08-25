Rails.application.routes.draw do
  get 'kittens/index'
  get 'kittens/show'
  get 'kittens/new'
  get 'kittens/create'
  get 'kittens/edit'
  get 'kittens/update'
  get 'kittens/delete'
  root to: 'kittens#index'
  resources :kittens
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
