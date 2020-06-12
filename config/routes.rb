Rails.application.routes.draw do
  get "cats/random", to: 'cats#random'
  resources :cats
  resources :dogs

  
end
