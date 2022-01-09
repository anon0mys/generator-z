class Api::V1::NamesController < ApiController
  def show
    generator = Generator.new(type: params[:type])
    render json: {
      name: generator.name
    }
  end

  private

  def generator_params
    params.permit({type: Generators::Names::ALLOWED_TYPES})
  end
end