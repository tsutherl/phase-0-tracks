#tell user what they are about to do √
#create hash √
#Prompt the designer for information: √
    #name: "Yuki", √ 
    #age: 26, √
    #number_of_children: 3, √
    #decor_theme: "cozy", √
    #has_dog: false, √
    #fave_color: "beige", √
    #likes_lamps: true, √
    #note: "Likes lollipops a lot so needs washable sofa" √
#Convert any user input to appropriate data type. √
#Print a hash back out to the screen when the designer has answered all of the questions. √
#Give the user the opportunity to update a key √
    #If the designer says "none", skip √
    #if the designer enters a key √
        #ask for new value and update the key's value. √ 
#Print latest version of the hash, and exit the program. √

def cleanup_data (client_info)
  client_info.each do |label, value|
  if label == :age || label == :number_of_children
    client_info[label] = value.to_i
  elsif label == :has_dog || label == :likes_lamps  
    client_info[label] = value == true
  else 
    client_info[label] = value
  end
  end 
end



puts "Please be ready to enter your client's information:"
puts ""

client_info = {}


puts "Please enter your client's name."
  client_info[:name] = gets.chomp

puts "Please enter you client's age."
  client_info[:age] = gets.to_i

puts "How many children does your client have?"
  client_info[:number_of_children] = gets.to_i

puts "Please enter your the decor theme your client has requested."
  client_info[:decor_theme] = gets.chomp

puts "Does your client have a dog - type true/false?"
  client_info[:has_dog] = gets.chomp == "true"

puts "What's your client's favorite color?"
  client_info[:fave_color] = gets.chomp

puts "Does you client like lamps - type true/false?"
  client_info[:likes_lamps] = gets.chomp == "true"

puts "Any extra notes you'd like to add about your client?"
  client_info[:note] = gets.chomp


puts client_info
puts ""

loop do
  puts "Please list any label you'd like to update - type 'none' to skip."
  update = gets.chomp

  if update == "none"
    puts cleanup_data(client_info)
    exit
  else
    puts "Please enter new information to update the label."
    client_info[update.to_sym] = gets.chomp
  end
end



 


