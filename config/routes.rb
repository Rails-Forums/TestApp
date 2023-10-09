Rails.application.routes.draw do
  root 'homes#index'

  # This actives every single resource for the devise modle user.
  devise_for :users, controllers: {
    sessions: 'users/registrations'
  }
  # Set to the correct controller we are looking for 

  # This will help it point to the correct controller where the mailer action is placed

  # This how we get the create edit update destory and index pages for the refernce post
  resources :posts

  # Stripe Billing
  get 'billing/index', as: :billing
  get '/card/new' => 'billing#new_card', as: :add_payment_method
  post "/card" => "billing#create_card", as: :create_payment_method
  get '/success' => 'billing#success', as: :success
  post '/subscription' => 'billing#subscribe', as: :subscribe

end
