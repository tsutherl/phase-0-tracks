def build_array(item1, item2, item3)
  p new_array = [item1, item2, item3]
end

def add_to_array(item1, item2)
  p item1 << item2
end

food = []
p food

food += ["coffee", "water", "cheese", "chocolate", "rice"]
p food

food.delete_at(2)
p food

# food.delete("chocolate")
# p food

food.insert(2, "cookie")
p food

#food.delete("coffee")
#p food

food.shift
p food


puts "Does food come with chocolate?"
if food.include?("chocolate")
  puts "yes"
else
  puts "no"
end

puts "Does food come with sushi?"
if food.include?("sushi")
  puts "yes"
else
  puts "no"
end

dogs = ["cute", "fluffy", "playful"]
add_array = food + dogs
p add_array

build_array(1, "kitty", false)
add_to_array([], "a")
add_to_array(["a", "b", "c", 1, 2], 3)


