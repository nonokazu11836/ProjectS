
Rails.application.routes.draw do
  get 'hello/index'
  get 'hello/login_check'
  devise_for :accounts
  get 'pictures/myupphoto'
  post 'pictures/myupphoto'
  get 'pictures/studenthome'
  get 'pictures/se_namecheck'
  get 'pictures/it_studentname'
  get 'pictures/it_member'
  get 'tops/index'
  post 'tops/index', to: 'pictures#studenthome'
  post 'pictures/myupphoto', to: 'pictures#destroy'
  get 'pictures/search'
  resources :details
  resources :events
  resources :pictures
  resources :gakkas
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

