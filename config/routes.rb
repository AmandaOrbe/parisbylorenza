Rails.application.routes.draw do
  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  resources :restaurants

  # #READ
  #   get 'restaurants', to: 'restaurants#index'
  #   get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # #CREATE
  #   get 'restaurants/new', to: 'restaurants#new'
  #   post 'restaurants', to: 'restaurants#create'
  # #UPDATE
  #   get "restaurants/:id/edit", to: "restaurants#edit"
  #   patch "restaurants/:id", to: "restaurants#update"
  # #DELETE
  #   delete "restaurants/:id", to: "restaurants#destroy"


  root to: 'pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
