Rails.application.routes.draw do

  get 'replys/index'
  get 'replys/new'
  get 'replys/create'
  resources :homes
    root 'homes#index'
    get 'homes/index'
    get 'homes/new',to: 'homes#new'
    post 'homes', to: 'homes#create'
    delete 'homes/:id', to: 'homes#destroy'
    get 'homes/:id' , to: 'homes#show'
    get 'homes/:id/edit', to: 'homes#edit'
    patch 'homes/:id', to: 'homes#update'
  
    
  resources :users
    root 'users#index' 
    get 'users/index'
    get 'users/new'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

  