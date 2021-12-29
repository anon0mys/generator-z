class Generator
  def initialize(category)
    @faker = get_faker_class(category)
  end

  def name
    @faker.name
  end

  private

  def get_faker_class(category)
    types = {
      'name' => Faker::Name,
      'superhero' => Faker::Superhero
    }
    types[category]
  end
end