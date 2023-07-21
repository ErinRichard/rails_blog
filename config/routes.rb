Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#index"

  # this replaces the two gets. resources maps all of the conventional routes for
  # a collection of resources
  resources :articles do
  # get "/articles", to: "articles#index"
  # get "articles/:id", to: "articles#show"
    resources :comments
  end
end
