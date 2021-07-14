Rails.application.routes.draw do
  root 'homes#index'
  
  # This how we get the create edit update destory and index pages for the refernce post
  resources :posts

end
