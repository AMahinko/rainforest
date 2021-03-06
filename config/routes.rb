Rails.application.routes.draw do

  # get '/products' 'products#index'
  # get '/products' 'products#create'
  # get '/products/new' 'products#new'
  # get '/products/:id/edit' 'products#edit'
  # get '/products/:id' 'products#show'
  # patch '/products/:id' 'products#update'
  # put 'products/:id' 'products#update'
  # delete 'products/:id' 'products#delete'


  resources :products do
    resources :reviews, only: [:show, :create, :destroy]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
