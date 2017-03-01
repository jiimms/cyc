Rails.application.routes.draw do
 
  get 'recepient/dashboard'

  get 'donor/dashboard'

  resources :user_types
  get 'admin/dashboard'

  get 'admin/all_users', to: 'admin#all_users'

  devise_for :users, controllers: {registrations: 'user/registrations'}
  get 'home/index'

  root  'home#index'


 	 devise_scope :user do
  	get 'login', to: 'devise/sessions#create'
  	get 'logout', to: 'devise/sessions#destroy'
  	get 'signup', to: 'devise/registrations#new'
	end


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
