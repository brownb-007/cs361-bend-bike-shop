# Bike

class Bike
  attr_accessor :id, :color, :price, :rented

  def initialize(id, color, price, rented = false)
    @id = id
    @color = color
    @price = price
    @rented = rented
  end

  def rent!
    self.rented = true
  end
end

class Cargo
  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :cargo_contents

  def initialize(weight = STANDARD_WEIGHT)
    @cargo_contents = []
    @weight = weight
  end

  def add_cargo(item)
    cargo_contents << item
  end

  def remove_cargo(item)
    cargo_contents.remove(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - cargo_contents.size
  end
end
