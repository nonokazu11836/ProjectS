
Rails.application.routes.draw do
  resources :students
  # devise_for :users
  #root to:'/users/sign_in'

  root 'pictures#studenthome'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get 'pictures/myupphoto'
  post 'pictures/myupphoto'
  get 'pictures/studenthome'
  get 'pictures/se_namecheck'
  get 'students/login'
  post 'students/login', to: 'students#login'
  get 'pictures/myup2'
  get 'pictures/allup'

  post 'pictures/show' , to: 'pictures#tagend'
  get 'pictures/tagend'

  get 'pictures/search2'
  post 'pictures/allup' , to: 'pictures#search2'
  
  delete :pictures, to: 'pictures#destroy_myupphoto'
  get 'pictures/search'

  resources :details
  resources :events
  resources :pictures
  resources :gakkas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

