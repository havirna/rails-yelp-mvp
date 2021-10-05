# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
mami_camilla =  { name: "Mami Camilla", address: "Prenzlauer Berg", category: "italian" }
kumpel_keule =  { name: "Kumpel Keule", address: "Markthalle 9", category: "belgian" }
maria_bonita =  { name: "Maria Bonita", address: "Prenzlauer Berg", category: "italian" }

[dishoom, pizza_east, mami_camilla, kumpel_keule, maria_bonita].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
