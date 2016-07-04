class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end


#santa1 = Santa.new
#santa1.speak
#santa1.eat_milk_and_cookies("chocolate chip cookie")

=begin
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

puts "Testing each Santa instance in the array to make sure it can speak and eat a cookie!"

santas.each do |santa|
  santa.speak
  santa.eat_milk_and_cookies("sugar cookie")
end
=end

santas = []

loop do
  puts "Hello Santa please enter your gender - type 'done' when all info has been entered."
  gender = gets.chomp
  if gender == 'done'
    break
  else
    puts "Please enter your ethnicity"
    ethnicity = gets.chomp
    santas << Santa.new(gender, ethnicity)  
  end
end









