Rails.application.routes.draw do
  resources :students
  resources :details
  resources :events
  resources :pictures
  resources :gakkas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
