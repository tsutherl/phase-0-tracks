#CLASS -------------------
#Candy

#ATTRIBUTES -----------
#Type: varies(string)
#Number_of_pieces: varies(float)
#Sweet: varies(boolean)
#Sour: varies(boolean)  

#METHODS -----------------
#Eaten √
#Dropped √
#Hidden(location) √  
#Add_pieces(number_of_new_pieces) √
#Melted √
#Went_through_laundry(ruined_clothing) √

class Candy

  attr_reader :type, :number_of_pieces, :sweet   
  attr_accessor :sour

  def initialize(type, sweet, sour)
    @type = type
    @number_of_pieces = rand(15)  
    @sweet = sweet
    @sour = sour
  end

  def eaten(num_pieces_eaten)
    @number_of_pieces = @number_of_pieces - num_pieces_eaten
    if (@number_of_pieces) == 0
      puts "No more #{@type}s :("
    elsif (@number_of_pieces) == 1
      puts "There's only #{@number_of_pieces} #{type} left!"
    elsif (@number_of_pieces) >= 2
      puts "There are #{@number_of_pieces} #{type}s left."
    else  
      puts "Hmmm more candies eaten than available . . . cool."
      @number_of_pieces = 0
    end
  end

  def dropped
  puts "#{type} dropped on the side walk but picked back up in 10 seconds phew!"
  end

  def hidden(location)
    puts "#{type} hidden #{location}."
  end

  def add_pieces(number_of_new_pieces)
    @number_of_pieces = @number_of_pieces + number_of_new_pieces
    if (@number_of_pieces) == 1
      puts "Yay, 1 #{@type} available!"
    else 
      puts "Yay, #{number_of_pieces + number_of_new_pieces} #{type}s available!"
    end
  end

  def melted
    puts "#{type} left outside and melted by the sun."
    @number_of_pieces = @number_of_pieces - 1
  end

  def went_through_laundry(clothing)
    puts "Went through laundry and is now all over someone's #{clothing}."
  end
end 

# lollipop = Candy.new("lollipop", true, true)
# lollipop.add_pieces(4)
# lollipop.melted
# p lollipop.number_of_pieces
# lollipop.went_through_laundry("shirt")
# lollipop.hidden("under the bed")
# lollipop.dropped
# lollipop.eaten(5)
# p lollipop.number_of_pieces

candy_array = []
puts "Hey there! Wanna create some candy? Type 'yes' or um uh I guess . . . 'no'."

loop do 
  answer = gets.chomp
  if answer == 'yes'
    puts "Cool, what type of candy?"
    type = gets.chomp
    puts "Do you want your candy to be sweet - 'yes' or 'no'? Seems like a funny question but you never know."
    sweet = gets.chomp == 'yes'
    puts "Do you want your candy to be sour - 'yes' or 'no'?"
    sour = gets.chomp =='yes'
    candy_array << Candy.new(type, sweet, sour)
    puts "Wanna create more candy? Type 'yes' or 'no'."
  elsif answer == 'no'
    puts ""
    candy_array.each do |candy| 
      puts "Type: #{candy.type}"
      puts "Sweet: #{candy.sweet}"
      puts "Sour: #{candy.sour}"
      puts ""
    end
    exit
  else 
    puts "Yo you gotta enter 'yes' or 'no'."
  end
end

     

