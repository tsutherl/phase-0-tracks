house = {
  Bedroom1: "bed, dresser, lamp",
  Bathroom: "toilet, sink, soap",
  Kitchen: "food, sink, oven",
}

p house

to_do_list = ["work on DBC stuff", "run", "brush teeth", "laundry", "eat"]

p to_do_list

puts "List of room in house and things in each room:"
house.each { |room, stuff| puts "#{room} - #{stuff}" }

puts "To do list:"
to_do_list.each { |task| puts "#{task}"}

puts "Completed:"
to_do_list.map! { |task| task << " √"}

puts to_do_list

