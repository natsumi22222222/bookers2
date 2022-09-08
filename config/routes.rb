Rails.application.routes.draw do

  devise_for :users
  get "home/about" => "home#about", as: "about"
  root 'home#top'
  resources :users,only:[:index,:show,:edit,:update]
  resources :books,only:[:new,:create,:index,:show,:edit,:update,
  :destroy]


end
