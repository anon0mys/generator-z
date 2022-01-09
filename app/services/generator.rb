class Generator
  include Generators::Locations
  include Generators::Names
  include Generators::Things
  include Generators::Words
  include Generators::Numbers

  def initialize(config)
    @type = config.delete(:type)
    @options = config
  end
end