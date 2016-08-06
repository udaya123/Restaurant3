Rails.application.routes.draw do
  devise_for :users
    resources :restaurants do
    resources :reservations
  end

 root :to => 'home#index'
 
  resources :users do
    resources :restaurants 
  end

  resources :restaurants do
    resources :stars
  end

  resources :categories do
    resources :restaurants
  end
 
 resources :rest_cats
  # get 'users/index'
end
