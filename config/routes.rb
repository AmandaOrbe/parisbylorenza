Rails.application.routes.draw do
  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#create'

  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant


  root to: 'pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
