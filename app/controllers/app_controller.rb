class AppController < ApplicationController
  def actor_query
    actor = Actor.find_by(id: params[:id])
    render json: { message: actor }
  end
end
