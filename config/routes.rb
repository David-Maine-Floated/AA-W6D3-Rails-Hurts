Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :users
  # Defines the root path route ("/")
  # root "articles#index"

  get 'users/', to: 'users#index' # as: 'users'  
  post 'users/', to: 'users#create' 
  get 'users/new', to: 'users#new'  #what dis 
  get 'users/:id/edit/', to: 'users#edit'  #what dis 
  get 'users/:id', to: 'users#show'
  patch 'users/:id', to: 'users#update'
  put 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'


end
