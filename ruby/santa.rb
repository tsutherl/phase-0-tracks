class Santa
  
  attr_reader :age, :ethnicity, :reindeer_ranking
  attr_accessor :gender

  def initialize(gender, ethnicity)
    @gender = gender
    puts "Gender: #{@gender}"
    @ethnicity = ethnicity
    puts "ethnicity: #{@ethnicity}"
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
    puts "Age: #{@age}"
    #puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
 
  def celebrate_birthday
    @age = age + 1
  end

  def get_mad_at(name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(name))) 
  end

end

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

genders = ["Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cisgender", "Cis Female", "Cis Male", "Cis Man",
"Cis Woman", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM",
"Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender Variant", "Genderqueer", "Intersex", "Male to Female",
"MTF", "Neither", "Neutrois", "Non-binary", "Other", "Pangender", "Trans", "Trans Female", "Trans Male", "Trans Man",
"Trans Person", "Trans Woman", "Transfeminine", "Transgender", "Transgender Female", "Transgender Male", "Transgender Man",
"Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male",
"Transsexual Man", "Transsexual Person", "Transsexual Woman", "N/A"]

ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "N/A"]

index = 0
until index == 30
    gender = genders.sample
    ethnicity = ethnicities.sample
    Santa.new(gender, ethnicity)
    index += 1
    puts "" 
end

=begin
p santas

index = 0
santas[0].reindeer_ranking.each do |reindeer|
  index += 1
  puts "#{reindeer} is at rank #{index}" 
end

santas[0].get_mad_at("Dasher")
puts ""

index = 0
santas[0].reindeer_ranking.each do |reindeer|
  index += 1
  puts "#{reindeer} is at rank #{index}" 
end

puts ""
puts "Gender: #{santas[0].gender}"
santas[0].gender = "Trans Female"
puts "Gender: #{santas[0].gender}"

p santas[0].age
p santas[0].ethnicity

=end



