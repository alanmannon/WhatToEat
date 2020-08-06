Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    post "/user" => "user#create"
    get "user/:id" => "user#show"
    get "/user/:id" => "user#show"
    patch "/user/:id" => "user#update"

    get "/groups" => "groups#index"
  end
end
