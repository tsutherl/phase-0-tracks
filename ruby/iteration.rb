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

array = [1, 2, 3, 4, 5, 6]
p array
array.delete_if {|number| number<5 }
p array

hash = {
  "First_name" => "Bob",
  "Lastname" => "Roberts",
  "City" =>"Flower Town",
  "State" =>"FL",
}

hash.delete_if { |label, answer| label == "Lastname"}

p hash

array.keep_if {|number| number.even?}
p array

hash.keep_if {|label,answer| label=="City"}
p hash

array = [1, 2, 3, 4, 5, 6]
array.reject! { |number| number>3}

p array

hash = {
  "First_name" => "Bob",
  "Lastname" => "Roberts",
  "City" =>"Flower Town",
  "State" =>"FL",
}

hash.reject! {|label, answer| label == "First_name"}

p hash

array = [1, 2, 3, 4, 5, 6]
array.drop_while { |i| i < 3}

p array

#The hash equivalent for Array#drop_while that we would chose to use on a block of code would be the Hash#.reject!
