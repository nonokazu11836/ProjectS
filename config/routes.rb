
Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get 'pictures/myupphoto'
  post 'pictures/myupphoto'
  get 'pictures/studenthome'
  get 'pictures/se_namecheck'
  get 'pictures/myup2'
  get 'pictures/allup'

  post 'pictures/show' , to: 'pictures#tagend'
  get 'pictures/tagend'

  delete :pictures, to: 'pictures#destroy_myupphoto'
  get 'pictures/search'
  resources :details
  resources :events
  resources :pictures
  resources :gakkas
  resources :students

  root 'pictures#studenthome'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

