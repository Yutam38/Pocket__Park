puts "Seeding parks..."
parks_data = [
  { name: "Tiergarten", address: "Straße des 17. Juni, Berlin, Germany" },
  { name: "Tempelhofer Feld", address: "Tempelhofer Damm, Berlin, Germany" },
  { name: "Volkspark Friedrichshain", address: "Friedrichshain, Berlin, Germany" },
  { name: "Mauerpark", address: "Bernauer Str., Berlin, Germany" },
  { name: "Treptower Park", address: "Alt-Treptow, Berlin, Germany" },
  { name: "Grunewald", address: "Grunewald, Berlin, Germany" },
  { name: "Görlitzer Park", address: "Görlitzer Str., Berlin, Germany" },
  { name: "Volkspark Humboldthain", address: "Brunnenstraße, Berlin, Germany" },
  { name: "Schlosspark Charlottenburg", address: "Spandauer Damm, Berlin, Germany" },
  { name: "Viktoriapark", address: "Kreuzberg, Berlin, Germany" },
  { name: "Britzer Garten", address: "Buckower Damm, Berlin, Germany" },
  { name: "Schillerpark", address: "Wedding, Berlin, Germany" },
  { name: "Rudolph-Wilde-Park", address: "Schöneberg, Berlin, Germany" },
  { name: "Plänterwald", address: "Plänterwald, Berlin, Germany" },
  { name: "Natur-Park Südgelände", address: "Priesterweg, Berlin, Germany" }
]

parks = parks_data.map do |data|
  Park.create!(
    name: data[:name],
    description: "A beautiful park in Berlin.",
    latitude: rand(52.4..52.6),
    longitude: rand(13.3..13.5),
    address: data[:address]
  )
end

# puts "Seeding timeslots..."
# start_time = Time.now.change(hour: 15, min: 0, sec: 0)
# end_time = start_time + 2.hours


parks.each do |park|
  [8, 10, 12, 14, 16, 18].each do |hour|
    Timeslot.find_or_create_by!(
      start_time: DateTime.current.change(hour: hour, min: 0, sec: 0),
      end_time: DateTime.current.change(hour: hour + 2, min: 0, sec: 0),
      park: park
    )
  end
end

puts "Seeding completed!"
