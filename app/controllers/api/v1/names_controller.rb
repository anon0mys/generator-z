class Api::V1::NamesController < ApiController
  def generate
    category = params[:category] || 'name'
    generator = Generator.new(category)
    render json: {
      name: generator.name
    }
  end
end