module Generators::Names
  ALLOWED_TYPES = %w[name superhero]

  def name
    type = @type || ALLOWED_TYPES.sample
    return faker_module(type).name
  end

  private
  
  def faker_module(type)
    types = {
      'name' => Faker::Name,
      'superhero' => Faker::Superhero
    }
    types[type]
  end
end