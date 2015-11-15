  Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  get 'login' => 'authentications#new'
  post 'login' => 'authentications#create'
  delete 'login' => 'authentications#destroy'
  
  resources :students
  resources :teachers
  resources :courses 
  resources :course_loads
  resources :course_rosters
  resources :attendances
  resources :sessions
 end
