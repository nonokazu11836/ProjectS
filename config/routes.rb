
Rails.application.routes.draw do
  get 'pictures/myupphoto'
  get 'pictures/studenthome'
  get 'pictures/se_namecheck'
  get 'pictures/it_member'
  get 'students/sample1'
  get 'students/login'
  post 'students/login', to: 'students#login'
  #post 'students/login', to: 'students#login'

  resources :details
  resources :events
  resources :pictures
  resources :gakkas
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

