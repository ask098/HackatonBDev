Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :home
  resources :profiles
  resources :companies
  resources :athletes do
    :experiences
  end
  root 'home#index'

end
