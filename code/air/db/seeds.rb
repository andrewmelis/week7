airports = ["ORD", "JFK", "LAX", "SFO"]

mileage_chart = {
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

100.times do
  # TODO: Add a random flight to the schedule
  dc, ac = airports.sample(2)

  a = Flight.new
  a.number = rand(1...999)
  a.departure_airport = dc
  a.departs_at = Time.now.beginning_of_day + rand(24.hours)
  a.arrival_airport = ac
  a.seats = rand(0...400)
  a.save
end
