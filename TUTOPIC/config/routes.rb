Rails.application.routes.draw do

 
  devise_for :users 
  
  

  get 'user/create'

  get 'user/update'

  get 'user/edit'

  get 'user/destroy'

  get 'user/index'

  get 'user/show'


  resources :subject_carrer_users
  resources :carrer_users
  resources :subjects
  resources :carrers
  resources :users


  get 'devise/index'
  get 'pages/carrers'

  get 'pages/profile'
  get 'pages/index'
  get 'pages/estadisticas'
  get 'pages/coordinadores'
	root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# 


end
