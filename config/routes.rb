
Rails.application.routes.draw do
  get 'pictures/myupphoto'
  post 'pictures/myupphoto'
  get 'pictures/studenthome'
  get 'pictures/se_namecheck'
  get 'students/sample1'
  get 'tops/index'
  post 'tops/index', to: 'pictures#studenthome'
  post 'pictures/myupphoto', to: 'pictures#destroy'
  resources :details
  resources :events
  resources :pictures
  resources :gakkas
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

