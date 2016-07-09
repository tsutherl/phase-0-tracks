=begin
module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    "~ ** ~ " + words + "! ** ~"
  end

end

puts Shout.yell_angrily("Leave")
puts Shout.yelling_happily("You're awesome")
=end

module Shout

  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily(words)
    puts "~ ** ~ " + words + "! ** ~"
  end

end

class Kid

  include Shout

end

class Ruby

  include Shout

end

yuki = Kid.new
yuki.yell_angrily("You ate my chocolate")
yuki.yelling_happily("You're da coolest")

ruby = Ruby.new
ruby.yell_angrily("Undefined method")
ruby.yelling_happily("Yay, you fixed my bug")

