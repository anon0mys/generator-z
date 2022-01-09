class Api::V1::WordsController < ApiController
  def show
    generator = Generator.new(params)
    render json: {
      word: generator.word
    }
  end

  private

  def options
    params.permit(:conjugation, {type: Generators::Words::ALLOWED_TYPES})
  end
end