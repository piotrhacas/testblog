Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#welcome' #kontroler z małej, bez controller bo kazdy controller sie tak konczy

  resources :authors

  resources :posts do
  	resources :comments, only: [:create, :destroy]
  end

  
  resources :commenters

end