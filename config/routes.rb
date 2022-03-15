Rails.application.routes.draw do
  get "/actor" => "app#actor_query"
  get "/actor/:id" => "app#actor_query"
end
