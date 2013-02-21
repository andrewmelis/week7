class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport, :departs_at, :departure_airport, :number, :seats

  Mileage_Chart = {
    "ORD-JFK" => 740,
    "ORD-LAX" => 1744,
    "ORD-SFO" => 1846,
    "MDW-JFK" => 740,
    "MDW-LAX" => 1744,
    "MDW-SFO" => 1846,
    "JFK-LAX" => 2475,
    "JFK-SFO" => 2586,
    "LAX-SFO" => 338
  }

  def miles
    distance = Mileage_Chart["#{departure_airport}-#{arrival_airport}"]
    if distance.nil?
      distance = Mileage_Chart["#{arrival_airport}-#{departure_airport}"]
    end
    return distance
  end

  def arrives_at
    self.departs_at + duration.minutes
  end

  def duration
    if miles!=nil
      self.miles / 8
    end
  end

end
