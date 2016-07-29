Rails.application.routes.draw do
  

  devise_for :users
  resources :restaurants do
  resources :reservations
end
  
  resources :users do
  resources :restaurants
end
  resources :restaurants do
  resources :stars
end
 root :to => "home#index" # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
