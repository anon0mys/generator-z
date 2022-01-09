class Api::V1::LocationsController < ApiController
  def show
    generator = Generator.new(generator_params)
    render json: {
      word: generator.location
    }
  end

  private

  def generator_params
    params.permit(:exclude, {type: Generators::Locations::ALLOWED_TYPES})
  end
end