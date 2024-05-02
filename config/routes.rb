Rails.application.routes.draw do

  # product
  get "product",to: "product#index"

  # main

  get "about-us",to: "main#about"

  #registration
  get "sign_up",to: "registration#new"
  post "sign_up",to: "registration#create"



  root to: "main#index"

end
