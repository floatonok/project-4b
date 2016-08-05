Rails.application.routes.draw do
  resources :sections
  resources :section_grids
  resources :homes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
