Rails.application.routes.draw do

  get 'edit_profile', to: 'users#edit_profile'
  get 'signup', to: 'users#signup_form'
  post 'signup', to: 'users#signup'

  get 'login', to: 'session#login'
  post 'login', to: 'session#check_user'
  get 'logout', to: 'session#logout'

  resources :bugs
  resources :projects
  resources :users

  root 'session#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
