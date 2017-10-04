Rails.application.routes.draw do
  resources :projects
  resources :users

  get 'login', to: 'session#login'
  post 'login', to: 'session#check_user'

  root 'session#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
