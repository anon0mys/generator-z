module Generators::Things
  ALLOWED_TYPES = %w[any animal liquid body_part]
  THINGS = {
    Faker::Beer => [:style],
    Faker::Construction => [:heavy_equipment, :material],
    Faker::Dessert => [:variety, :topping],
    Faker::Creature::Animal => [:name],
    Faker::Food => [:dish, :fruits, :ingredient, :vegetables],
    Faker::House => [:furniture, :room],
    Faker::Mountain => [:name, :range],
    Faker::Science => [:tool],
    Faker::Tea => [:variety],
  }

  def thing
    type = @type || ALLOWED_TYPES.sample
    self.send(type)
  end

  def any
    klass, methods = THINGS.to_a.sample
    klass.send(methods.sample)
  end

  def animal
    Faker::Creature::Animal.name
  end

  def liquid
    [Faker::Beer.style, Faker::Tea.variety, 'water', 'oil', 'gasoline', 'juice'].sample
  end

  def body_part
    %w[head shoulder knee wrist hand finger toe heart liver stomach ankle].sample
  end
end