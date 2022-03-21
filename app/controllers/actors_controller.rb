class ActorsController < ApplicationController
    
  def index
    actors = Actor.all
    render :index
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render :show
  end

  def create
    actor = Actor.new(
    first_name: params["first_name"],
    last_name: params["last_name"],
    known_for: params["know_for"]
    )
    if actor.save 
      render :show
    else
      render json: {errors: actor.errors.full_messages}, status: 422
    end
  end

  def update
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)

    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["know_for"] || actor.know_for
    @actor.movie_id = params["movie_id"] || @actor.movie_id

    if actor.save 
      render :show 
    else
      render json: {errors: actor.errors.full_messages}, status: 422
    end
  end

  def destroy
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)

    actor.destroy
    render json: {message: "actor deleted"}.as_json
  end
end

  def first_name
    validates first_name, length {minimum:2}
  end

  def last_name
    validates last_name, length {minimum: 2}
  end

  def know_for
    validates :actor, know_for, 

  end

  


# def index
#   actor = Actor.find_by(id: params[:id])
#   render json: { message: actor }
# end
# end
