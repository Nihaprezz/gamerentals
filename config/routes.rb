Rails.application.routes.draw do
  get '/', to: "application#home", as: "home"
  resources :rentals
  resources :videogames
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
