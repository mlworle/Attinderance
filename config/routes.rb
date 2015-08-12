  Rails.application.routes.draw do
<<<<<<< HEAD
=======
  resources :teachers
>>>>>>> mw-create-teacher
  
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  root 'static_pages#home'
  resources :students
<<<<<<< HEAD
  resources :teachers 
 end
=======
  end
>>>>>>> mw-create-teacher
