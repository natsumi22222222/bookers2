Rails.application.routes.draw do
  get 'index/show'
  get 'index/edit'
  devise_for :users
  get "homes/about" => "homes#about", as: "about"
  root 'homes#top'
  

end
