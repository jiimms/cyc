Rails.application.routes.draw do
 
  get 'admin/dashboard'

  get 'admin/index'

  devise_for :users, controllers: {registrations: 'user/registrations'}
  get 'home/index'

  root  'home#index'

  get 'pages/about'

<<<<<<< HEAD
 	 devise_scope :user do
  	get 'login', to: 'devise/sessions#create'
  	get 'logout', to: 'devise/sessions#destroy'
  	get 'signup', to: 'devise/registrations#new'
	end


=======
  devise_for :members
  
>>>>>>> 59068db06449224d25ff555afbe51eeb4b1b79dc
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
