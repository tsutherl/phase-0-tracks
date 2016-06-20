# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

investigation1 = "iNvEsTiGaTiOn".swapcase
investigation2 = "iNvEsTiGaTiOn".swapcase!
puts investigation1 
puts investigation2
# => “InVeStIgAtIoN”

zoom = "zom".insert(2, 'o')
puts zoom
# => “zoom”


pad_sides = "enhance".center(15)
puts pad_sides
#=> "    enhance    "

uppercase1 = "Stop! You’re under arrest!".upcase
uppercase2 = "Stop! You’re under arrest!".upcase!
puts uppercase1
puts uppercase2
# => "STOP! YOU’RE UNDER ARREST!"

replace_string = "the usual".replace("the usual suspects")
puts replace_string
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4



