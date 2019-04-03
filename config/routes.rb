Rails.application.routes.draw do
  resources :categories
  resources :links, except: :index

  # get "link/new", to: "links#new"
  # post "link", to: "links#create"
  # delete "link/:id", to: "links#destroy"

  root 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
