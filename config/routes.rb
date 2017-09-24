Rails.application.routes.draw do
    devise_for :users
    resources :professors do
	get :add
	post :add_subject
    end

    resources :subjects do
	get :add
	post :add_professor
	resources :professors do 
	    resources :reviews
	end
    end

    resources :schools


    resources :admin, only: :index

    root "splash#index"
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
