Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/user_group" => "user_group#index"
    post "/user_group" => "user_group#create"
    get "/user_group/:id" => "user_group#show"
    patch "/user_group/:id" => "user_group#update"
    delete "/user_group/:id" => "user_group#destroy"

    post "/user" => "user#create"
    get "/user/:id" => "user#show"
    patch "/user/:id" => "user#update"
  end
end
