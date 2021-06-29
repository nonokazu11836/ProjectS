
Rails.application.routes.draw do
  get 'pictures/myupphoto'
  post 'pictures/myupphoto'
  get 'pictures/studenthome'
  get 'pictures/se_namecheck'
  get 'students/login'
  post 'students/login', to: 'students#login'
  delete :pictures, to: 'pictures#destroy_myupphoto'
  get 'pictures/search'
  resources :details
  resources :events
  resources :pictures
  resources :gakkas
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

