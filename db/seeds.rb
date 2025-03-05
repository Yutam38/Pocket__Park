Park.destroy_all

puts "Seeding parks..."
parks_data = [
  { name: "Tiergarten", address: "Straße des 17. Juni, Berlin, Germany", image:"https://ost.berlin/wp-content/uploads/2023/06/Tiergarten-1.jpg" },
  { name: "Tempelhofer Feld", address: "Tempelhofer Damm, Berlin, Germany", image:"https://louisas-place.de/wp-content/uploads/2020/11/tempelhofer_feld_-_nutzung_oderstrasse_c_manuel_frauendorf_1k1a9605_KLEIN.jpg" },
  { name: "Volkspark Friedrichshain", address: "Friedrichshain, Berlin, Germany", image:"https://cdn.book-family.de/travelbook/data/uploads/2023/04/263875588.jpg?impolicy=channel&imwidth=992" },
  { name: "Mauerpark", address: "Bernauer Str., Berlin, Germany", image:"https://www.mauerpark.info/wp-content/uploads/2020/06/mauerpark-erweiterung_DJI_0612.jpg" },
  { name: "Treptower Park", address: "Alt-Treptow, Berlin, Germany", image:"https://www.berlin.de/binaries/asset/image_assets/8260451/ratio_4_3/1692704729/800x600/" },
  { name: "Grunewald", address: "Grunewald, Berlin, Germany", image:"https://www.berlin.de/binaries/asset/image_assets/6301324/source/1730367164/1000x500/" },
  { name: "Görlitzer Park", address: "Görlitzer Str., Berlin, Germany", image:"https://www.berlin.de/binaries/asset/image_assets/3921349/ratio_4_3/1693827293/800x600/" },
  { name: "Volkspark Humboldthain", address: "Brunnenstraße, Berlin, Germany", image:"https://ost.berlin/wp-content/uploads/2023/06/Tiergarten-1.jpg" },
  { name: "Schlosspark Charlottenburg", address: "Spandauer Damm, Berlin, Germany", image:"https://www.spsg.de/fileadmin/_processed_/e/5/csm_SPSG_SchlossgartenCharlottenburg_WolfgangPFauder_F0031970_A4_Buehne_9350a18c2a.jpg" },
  { name: "Viktoriapark", address: "Kreuzberg, Berlin, Germany", image:"https://upload.wikimedia.org/wikipedia/commons/2/2d/Viktoriapark_B-Kreuzberg_06-2017_img1.jpg" },
  { name: "Britzer Garten", address: "Buckower Damm, Berlin, Germany", image:"https://www.britzergarten.de/fileadmin/_processed_/6/0/csm_BritzerGartenErleben_KarlFoersterStaudengarten_819ab7ade1.jpg" },
  { name: "Schillerpark", address: "Wedding, Berlin, Germany", image:" https://vonortzuort.reisen/wp-content/uploads/2020/12/berlin-schillerpark-blick-bastion-1024x682.jpeg" },
  { name: "Rudolph-Wilde-Park", address: "Schöneberg, Berlin, Germany", image:"https://www.berlin-lese.de/media/p1010331.jpg" },
  { name: "Plänterwald", address: "Plänterwald, Berlin, Germany", image:"https://www.berlin.de/binaries/asset/image_assets/8298240/source/1702467283/1000x500/" },
  { name: "Natur-Park Südgelände", address: "Priesterweg, Berlin, Germany", image:"https://www.natur-park-suedgelaende.de/fileadmin/_processed_/3/4/csm_suedgelaende_serviceinfos_ueberuns_wasserturm_drohne_c_franksperling_da4885af8b.jpg" }
]

parks = parks_data.map do |data|
  Park.create!(
    name: data[:name],
    description: "A beautiful park in Berlin.",
    address: data[:address],
    image: data[:image]
  )
end

puts "Seeding timeslots..."
start_time = Time.now.change(hour: 15, min: 0, sec: 0)
end_time = start_time + 2.hours

parks.each do |park|
  Timeslot.create!(
    start_time: start_time,
    end_time: end_time,
    park: park
  )
end

puts "Seeding completed!"
