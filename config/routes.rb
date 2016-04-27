Rails.application.routes.draw do

  devise_for :users

  resources :users do
  	resources  :contacts
  end
  
  root 'homepages#index'

end
