Rails.application.routes.draw do

  get 'categories/show'

  get 'categories/new'

  get 'categories/edit'

  resources :donors do
    resources :donations
  end
  #Categories route
  get 'recepient/category', to: 'recepients#categories'
  get 'browse/categories', to: 'categories#index'

  #Root route
  root  'home#index'

  #users route
  get 'show/user/profile', to: 'users#profile'
  post 'change/profile/picture/', to: 'users#change_profile_picture'

 
  #Recepient routes
  get 'recepient/dashboard', to: 'recepients#dashboard'
  get 'browse/recepients', to: 'recepients#index'
  get 'profile', to: 'recepients#profile'
  #Donor routes
  get 'donor/dashboard', to: 'donors#dashboard'
  get 'browse/stories', to: 'stories#stories'

  #Admin routes
  get 'admin/dashboard'
  get 'admin/all_users', to: 'admin#all_users'
  get 'admin/all_stories', to: 'admin#all_stories'
  get 'admin/all_recepients', to: 'admin#all_recepients'
  get 'admin/all_donors', to: 'admin#all_donors'
  put 'admin/block/user', to: 'admin#block_user'
  get 'admin/category/edit', to: 'categories#edit'

  #Devise
  devise_for :users, controllers: {registrations: 'user/registrations'}

  #Resources
  resources :categories
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
