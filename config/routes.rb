  Rails.application.routes.draw do
  resources :teachers
  
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  root 'static_pages#home'
  resources :students
  end
