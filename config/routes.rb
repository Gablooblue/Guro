Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :professors
  resources :subjects
  resources :schools

  resources :admin, only: :index

  root "splash#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
