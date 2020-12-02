Rails.application.routes.draw do
<<<<<<< HEAD
  resources :homes
    root 'homes#index'
    get 'homes/index'
    get 'homes/new',to: 'homes#new'
    post 'homes', to: 'homes#create'
    delete 'homes/:id', to: 'homes#destroy'
    get 'homes/:id' , to: 'homes#show'
    get 'homes/:id/edit', to: 'homes#edit'
    patch 'homes/:id', to: 'homes#update'
    
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=======
  root 'users#index'
  get 'users/index'
  get 'users/new'
  get 'questions/index'
  get 'questions/new'
  get 'questions/create'
  get 'questions/destroy'
  get 'questions/index'
  resources :users
end
>>>>>>> 55cad86ef181f7731cfda939ffb93d5c4808eae8
