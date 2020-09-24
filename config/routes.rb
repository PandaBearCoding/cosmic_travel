Rails.application.routes.draw do
  resources :missions
  resources :scientists
  resources :planets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "/scientists", to: "scientist#index", as: "scientists"
  # get "/scientists/:id", to: "scientist#show", as: "scientist"
  # get "/scientists/new", to: "scientist#new", as: "new_scientist"
  # post "/scientists", to: "scientist#create"
  # get "/scientists/:id/edit", to: "scientist#edit", as: "edit_scientist"
  # patch "/scientists/:id", to: "scientists#update"
  # delete "/scientists/:id", to: "scientists#destroy", as: "destroy_scientist"

  get "/", to: "scientists#homepage", as: "homepage"
  get "/about", to: "scientists#about", as: "about"
end
