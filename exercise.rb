@venues = [
{ address: "123 Main Street", city: "Toronto", wheelchair_accessible: true, capacity: 100 },
{ address: "567 Centre Street", city: "Toronto", wheelchair_accessible: false, capacity: 400 },
{ address: "9B Ontario Street", city: "Montreal", wheelchair_accessible: true, capacity: 1000 },
{ address: "56 Road Avenue", city: "Ottawa", wheelchair_accessible: true, capacity: 650 },
{ address: "938 Avenue Way East", city: "Toronto", wheelchair_accessible: false, capacity: 90 },
{ address: "34 Main Street West", city: "London", wheelchair_accessible: false, capacity: 300 },
{ address: "44 Quebec Road", city: "Toronto", wheelchair_accessible: true, capacity: 200 },
{ address: "10 Spruce Avenue Ouest", city: "Montreal", wheelchair_accessible: false, capacity: 525 }
]

@match_venues = []

def find_venues(wheelchair_accessible, capacity, city)
  @venues.each do |venues_x|
    if venues_x[:wheelchair_accessible] == wheelchair_accessible && venues_x[:capacity] >= capacity && venues_x[:city] == city
        @match_venues << venues_x[:address]
    end
  end
end

find_venues(true, 150, "Toronto")
puts
print @match_venues
puts
