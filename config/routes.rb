Rails.application.routes.draw do
  get "cats/search", to: "cats#search"
  get "cats/random", to: "cats#random"
  get "dogs/random", to: "dogs#random"
  resources :cats
  resources :dogs

  
end
