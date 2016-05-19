Rails.application.routes.draw do

  devise_for :users, :controller => { :omniauth_callbacks => "callbacks" }

  resources :users do
  	resources  :contacts
  end
  
  root 'homepages#index'

end
