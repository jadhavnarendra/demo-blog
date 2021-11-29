Rails.application.routes.draw do
  get 'home/index'
  get 'home/show'
  get 'home/new'
  get 'home/edit'
  get 'home/delete'
  devise_for :users

  #get 'home/details'
  #get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/home", to: "home#index"

  get "home/details", to: "home#index", as: :home_details


end
