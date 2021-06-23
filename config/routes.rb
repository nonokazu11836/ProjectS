
Rails.application.routes.draw do
  devise_for :accounts
  get 'hello/index'
  get 'hello/login_check'
  get 'pictures/studenthome'
  resources :details
  resources :events
  resources :pictures
  resources :gakkas
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

