Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/user" => "users#index"
    post "/user" => "users#create"
    put "/user/:id" => "users#update"

    post "/session" => "sessions#create"

    get "/groups" => "groups#index"
    get "/groups/:id" => "groups#show"

    get "/usergroup" => "user_groups#index"
    post "/usergroup" => "user_groups#create"
    get "/usergroup/:id" => "user_groups#show"
    put "/usergroup/:id" => "user_groups#update"
    delete "/usergroup/:id" => "user_groups#destroy"

    get "/zomato" => "zomato#index"
  end
end
