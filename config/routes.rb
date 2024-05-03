Rails.application.routes.draw do

  # product
  get "product",to: "product#index"

  # main

  get "about-us",to: "main#about"

  #registration
  get "sign_up",to: "registration#new"
  post "sign_up",to: "registration#create"

  #registration
  get "sign_in",to: "session#new"
  post "sign_in",to: "session#create"

  #user
  get 'users', to: 'user#index'
  delete 'users_delete/:id', to: 'user#destroy'

  #login
  delete "logout", to: 'session#destroy'

  root to: "main#index"

end
