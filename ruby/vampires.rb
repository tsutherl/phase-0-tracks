#Vampire Detection Quiz

puts "How many employees will be processed"

number_of_emplyees= gets.to_i

quiz=1
until quiz==number_of_emplyees

  puts "Welcome to Werewolf Inc."

  puts "What is your name?"
  name=gets.chomp

  puts "How old are you?" 
  age=gets.to_f

  puts "What year were you born?"
  year_of_birth=gets.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you (yes or no)?"
  garlic_bread=gets.chomp

  puts "Would you like to enroll in the company’s health insurance (yes or no)?"
  health_insurance=gets.chomp

  vampire_detection=nil

  if age == 2016-year_of_birth && (garlic_bread=="yes" || health_insurance=="yes")
    vampire_detection="Probably not a vampire."
  end
  if age != 2016-year_of_birth && (garlic_bread=="no" || health_insurance=="no")
    vampire_detection="Probably a vampire."
  end
  if age != 2016-year_of_birth && (garlic_bread=="no" && health_insurance=="no")
    vampire_detection="Almost certainly a vampire."
  end
  if name == "Drake" || name =="Cula" || name=="Tu Fang" 
    vampire_detection="Definitely a vampire."
  end
  if vampire_detection==nil
    puts "Results inconclusive."
  end

  puts vampire_detection

end

