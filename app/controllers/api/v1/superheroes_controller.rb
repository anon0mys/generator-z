class Api::V1::SuperheroesController < ApiController
  def show
    superhero = Superhero.new
    render json: superhero.to_json
  end
end