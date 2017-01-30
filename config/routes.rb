Rails.application.routes.draw do
 
  root  'pages#home'

  get 'pages/about'

  devise_for :members
  resources :farmers
  resources :warwidows
  resources :educations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
