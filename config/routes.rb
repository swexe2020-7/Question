Rails.application.routes.draw do
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