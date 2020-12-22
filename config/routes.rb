Rails.application.routes.draw do
<<<<<<< HEAD

  get 'replys/index'
  post 'replys/new',to: "replys#create"
  get 'replys/new' 
  
=======
  get 'homes/search'
  get 'users/search'
>>>>>>> de20e72e6049a099ad40990ae26544aa81c158c9
  resources :homes
    root 'homes#index'
    get 'homes/index'
    get 'homes/new',to: 'homes#new'
    post 'homes', to: 'homes#create'
    delete 'homes/:id', to: 'homes#destroy'
    get 'homes/:id' , to: 'homes#show'
    get 'homes/:id/edit', to: 'homes#edit'
    patch 'homes/:id', to: 'homes#update'
  
    get 'logins/login_form'
    post 'logins/login'
    get 'logins/logout'
<<<<<<< HEAD
  resources :users
    root 'users#index' 
    get 'users/index'
    get 'users/new'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

  
=======
    resources :homes do
    get :search, on: :collection
    end
  end
>>>>>>> de20e72e6049a099ad40990ae26544aa81c158c9
