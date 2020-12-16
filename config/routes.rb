Rails.application.routes.draw do
  get 'homes/search'
  get 'users/search'
  resources :homes
  resources :users
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
    resources :homes do
    get :search, on: :collection
    end
  end