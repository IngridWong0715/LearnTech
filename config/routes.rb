Rails.application.routes.draw do
  resources :users
  resources :books
  resources :moocs
  resources :todos
  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end