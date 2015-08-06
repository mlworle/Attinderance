  Rails.application.routes.draw do
  get 'teacher/new'

  get 'teacher/edit'

  get 'teacher/delete'

  get 'teacher/view'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  root 'static_pages#home'
  resources :students
  end
