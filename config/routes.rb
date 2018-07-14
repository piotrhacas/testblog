Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#welcome' #kontroler z małej, bez controller bo kazdy controller sie tak konczy

  # get '/authors', to: 'authors#index', as: :authors
  # get '/authors/:id', to: 'authors#show', as: :author
  # get '/author/new', to: 'authors#new', as: :new_author

  resources :authors

  resources :posts do
  	resources :comments#, only: [:new, :create, :destroy]
  end

  
  resources :commenters

end