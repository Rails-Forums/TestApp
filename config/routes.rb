Rails.application.routes.draw do
  root 'homes#index'

  # This actives every single resource for the devise modle user.
  devise_for :users


  # This how we get the create edit update destory and index pages for the refernce post
  resources :posts

end
