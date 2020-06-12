Rails.application.routes.draw do

  get "cats/breed", to: "cats#breed_search"
  get "dogs/breed", to: "dogs#breed_search"

  get "cats/search", to: "cats#search"
  get "dogs/search", to: "dogs#search"
  
  get "cats/random", to: "cats#random"
  get "dogs/random", to: "dogs#random"
  
  resources :cats
  resources :dogs

  
end
