class Api::V1::ThingsController < ApiController
  def show
    generator = Generator.new(generator_params)
    render json: {
      word: generator.thing
    }
  end

  private

  def generator_params
    params.permit({type: Generators::Things::ALLOWED_TYPES})
  end
end