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
#Convert any user input to appropriate data type.
#Print a hash back out to the screen when the designer has answered all of the questions. √
#Give the user the opportunity to update a key √
    #If the designer says "none", skip √
    #if the designer enters a key √
        #ask for new value and update the key's value. √ 
#Print latest version of the hash, and exit the program. √

def cleanup_data(client_info)
  client_info.each do |label, value|
  case label
  when :age || :number_of_children
    client_info[label] = value.to_i
  break
  when :has_dog || :likes_lamps
    client_info[label] = value.




puts "Please be ready to enter your client's information:"

client_info = {}

puts "Please enter your client's name."
  client_info[:name] = gets.chomp

puts "Please enter you client's age."
  client_info[:age] = gets.chomp

puts "How many children does your client have?"
  client_info[:number_of_children] = gets.chomp

puts "Please enter your the decor theme your client has requested."
  client_info[:decor_theme] = gets.chomp

puts "Does your client have a dog?"
  client_info[:has_dog] = gets.chomp

puts "What's your client's favorite color?"
  client_info[:fave_color] = gets.chomp

puts "Does you client like lamps?"
  client_info[:likes_lamps] = gets.chomp

puts "Any extra notes you'd like to add about your client?"
  client_info[:note] = gets.chomp


puts client_info

loop do
  puts "Please list any label you'd like to update - type 'none' to skip."
  update = gets.chomp

  if update == "none"
    puts client_info
    exit
  else
    puts "Please enter new information to update the label."
    client_info[update.to_sym] = gets.chomp
  end
end
 


