Rails.application.routes.draw do
  get "cats/random", to: "cats#random"
  get "dogs/random", to: "dogs#random"
  resources :cats
  resources :dogs

  
end
