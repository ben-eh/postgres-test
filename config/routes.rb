Rails.application.routes.draw do
  resources :categories do
  end

  delete "delete_link", to: "links#destroy"
  get "new_link", to: "links#new"
  post "links", to: "links#create"

  root 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
