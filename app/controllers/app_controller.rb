class AppController < ApplicationController
  def def actor_query
    input = params:[actor_name]
    render json: {message: "#{input}"}
  end
end
