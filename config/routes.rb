Rails.application.routes.draw do
  post "/actor" => "app#actor_query"
end
