Rails.application.routes.draw do
    devise_for :users
    resources :professors do
	get :add
	post :add_subject
	resources :reviews
    end

    resources :subjects do
	get :add
	post :add_professor
	resources :professors
    end

    resources :schools

    resources :subject_professors, only: [:new, :create, :destroy]


    resources :admin, only: :index

    root "splash#index"
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
