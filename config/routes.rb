Rails.application.routes.draw do
 
  resources :donors
  resources :recepients
  get 'recepient/dashboard'

  get 'donor/dashboard'

  resources :user_types
  get 'admin/dashboard'

  get 'admin/all_users', to: 'admin#all_users'

  get 'admin/all_recepients', to: 'admin#all_recepients'
  get 'admin/all_donors', to: 'admin#all_donors'

  devise_for :users, controllers: {registrations: 'user/registrations'}

  root  'home#index'


 	 devise_scope :user do
  	get 'login', to: 'devise/sessions#create'
  	get 'logout', to: 'devise/sessions#destroy'
  	get 'signup', to: 'devise/registrations#new'
	end


  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
