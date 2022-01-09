module Generators::Locations
  ALLOWED_TYPES = %w[country state city]

  def location
    type = @type || ALLOWED_TYPES.sample
    Faker::Address.send(type)
  end
end