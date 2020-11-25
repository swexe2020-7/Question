Rails.application.routes.draw do
  get 'homes/index'
  get 'homes/new'
  get 'logins/login_from'
  get 'logins/login'
  get 'logins/logout'
  get 'likes/create'
  get 'likes/destroy'
  get 'users/index'
  get 'users/new'
  get 'questions/index'
  get 'questions/new'
  get 'questions/create'
  get 'questions/destroy'
  get 'questions/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
