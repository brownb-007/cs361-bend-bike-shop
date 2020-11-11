class Rental
  DOLLAR_MULTIPLIER = 2

  attr_reader :bike, :luggage

  def initialize(bike, luggage)
    @bike = bike
    @luggage = luggage
  end

  def bike_price
    self.bike.weight + self.bike.price * DOLLAR_MULTIPLIER
  end

  def luggage_price
    self.luggage.weight * DOLLAR_MULTIPLIER
  end

  def price
    bike_price + luggage_price
  end

  def weight
    self.bike.weight + self.luggage.weight
  end
end
