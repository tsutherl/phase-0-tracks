#ask user for password 
#welcome spy 
#prompt spy to enter their real name (first and last) √
#create fake name for spy with the following steps:
    #Swap first and last name
    #turn string into array of character
    #loop through each character
        #if vowel (a, e, i, o, or u) change to next vowel in 'aeiou'
        #else to the next consonant in the alphabet 'bcdfghjklmnpqrstvwxyz'
#return fake name to spy


def change_char(array_of_char)
  array_index = 0
  array_of_char.each do |char|
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
    if char == " "
      array_of_char[array_index] = char
    elsif char == "u"
      new_char = "a"
      array_of_char[array_index] = new_char
    elsif char == "z"
      new_char = "b"
      array_of_char[array_index] = new_char
    elsif vowels.include?(char)
      index = vowels.index(char)
      index += 1
      new_char = vowels[index]
      array_of_char[array_index] = new_char
    else
      index = consonants.index(char)
      index += 1
      new_char = consonants[index]
      array_of_char[array_index] = new_char
    end
    array_index += 1
  end
  array_of_char
end


def generate_fake_name(name) 
  name = name.split(' ')
  name[0] = name[0].downcase
  name[1] = name[1].downcase
  name = name.reverse!
  last_name = name[0].split('')
  first_name = name[1].split('')
  last_name = change_char(last_name)
  first_name = change_char(first_name)
  last_name[0] = last_name[0].capitalize!
  first_name[0] = first_name[0].capitalize!
  space = [" "]
  fake_name = last_name.concat(space.concat(first_name)) 
  fake_name.join 
end


puts "Enter your spy password."
password = gets.chomp
puts ""
puts "Please enter your first and last name - capitalize the first letter for each."
name = gets.chomp
puts ""
puts "Generating fake name..."
puts ""
puts generate_fake_name(name)











