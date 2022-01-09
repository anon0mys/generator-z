class Api::V1::NumbersController < ApiController
  def show
    generator = Generator.new(generator_params)
    render json: {
      word: generator.number
    }
  end

  private

  def generator_params
    params.permit({type: Generators::Numbers::ALLOWED_TYPES})
  end
end