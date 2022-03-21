Rails.application.routes.draw do
  # get "/actors" => "actors#index"
  # get "/actors/:id" => "actors#show"
  get "/actors", controller: "actors", action: "index"
  post "/actors", controller: "actors", action: "create"
  get "/actors/:id", controller: "actors", action: "show"
  patch "/actors/:id", controller: "actors", action: "update"
  delete "/actors/:id", controller: "actors", action: "destroy"

  get "/movies", controller: "movies", action: "index"
  post "/movies", controller: "movies", action: "create"
  get "/movies/:id", controller: "movies", action: "show"
  patch "/movies/:id", controller: "movies", action: "update"
  delete "/movies/:id", controller: "movies", action: "destroy"
end
