Rails.application.routes.draw do
  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"
end
