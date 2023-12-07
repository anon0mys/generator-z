class Superhero
  def initialize
    @name = Generator.new(type: 'superhero').name
    @sidekick = Generator.new(type: 'animal').thing
    @weapon = Generator.new(type: 'tool').thing
    @slogan = KanyeClient.new.get_quote
  end

  def to_json
    {
      name: @name,
      sidekick: @sidekick.capitalize,
      slogan: @slogan,
      weapon: @weapon,
    }
  end
end