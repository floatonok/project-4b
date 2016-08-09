Rails.application.routes.draw do
  resources :cells
  resources :sections
  resources :homes
  resources :users
  post 'login', to: 'sessions#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
