class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors.as_json
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor.as_json
  end

  def create
    actor = Actor.new()
end

# def index
#   actor = Actor.find_by(id: params[:id])
#   render json: { message: actor }
# end
# end
