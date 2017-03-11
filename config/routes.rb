Rails.application.routes.draw do

  resources :donors do
    resources :donations
  end
  #Root route
  root  'home#index'

 
  #Recepient routes
  get 'recepient/dashboard', to: 'recepients#dashboard'
  get 'profile', to: 'recepients#profile'
  #Donor routes
  get 'donor/dashboard', to: 'donors#dashboard'
  get 'browse/stories', to: 'stories#stories'
  #Stories routes
  # get 'stories', to: 'stories#index'
  # post 'stories', to: 'stories#create'
  #Admin routes
  get 'admin/dashboard'
  get 'admin/all_users', to: 'admin#all_users'
  get 'admin/all_stories', to: 'admin#all_stories'
  get 'admin/all_recepients', to: 'admin#all_recepients'
  get 'admin/all_donors', to: 'admin#all_donors'

  #Devise
  devise_for :users, controllers: {registrations: 'user/registrations'}

  #Resources
  resources :users
  resources :user_types
  resources :recepients do
    resources :stories
  end

  #Devise Scope
 	 devise_scope :user do
  	get 'login', to: 'devise/sessions#create'
  	get 'logout', to: 'devise/sessions#destroy'
  	get 'signup', to: 'devise/registrations#new'
	end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
