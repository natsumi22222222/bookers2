Rails.application.routes.draw do

  devise_for :users
  get "homes/about" => "homes#about", as: "about"
  root 'homes#top'
  resources :users,only:[:index,:show,:edit,:update]
  resources :books,only:[:new,:create,:index,:show,:edit,:update,
  :destroy]


end
