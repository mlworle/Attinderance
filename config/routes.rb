  Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  root 'static_pages#home'
  resources :students
  resources :teachers
  resources :courses 
  resources :course_loads
  resources :course_rosters
  resources :attendances
  resources :sessions
 end
