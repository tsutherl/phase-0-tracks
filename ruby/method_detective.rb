# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

investigation1 = "iNvEsTiGaTiOn".swapcase
p investigation1 
investigation2 = "iNvEsTiGaTiOn".swapcase!
p investigation2
# => “InVeStIgAtIoN”

zoom = "zom".insert(2, 'o')
p zoom
# => “zoom”


pad_sides = "enhance".center(15)
p pad_sides
#=> "    enhance    "

uppercase1 = "Stop! You’re under arrest!".upcase
p uppercase1

uppercase2 = "Stop! You’re under arrest!".upcase!
p uppercase2
# => "STOP! YOU’RE UNDER ARREST!"

replace_string1 = "the usual".replace("the usual suspects")
p replace_string1

add_string2 = "the usual" << " suspects"
p add_string2

string_length = "the usual".length 
insert_string = "the usual".insert(string_length, " suspects")
p insert_string
#=> "the usual suspects"


insert_string = " suspects".insert(0,"the usual")
p insert_string
# => "the usual suspects"

remove_last_char = "The case of the disappearing last letter".chop
p remove_last_char
# => "The case of the disappearing last lette"


remove_first_char1 = "The mystery of the missing first letter".slice(1..-1)
p remove_first_char1

remove_first_char2 = "The mystery of the missing first letter".slice!(1..-1)
p remove_first_char2
# => "he mystery of the missing first letter"

remove_whitespaces = "Elementary,    my   dear        Watson!".squeeze
p remove_whitespaces
# => "Elementary, my dear Watson!"

to_byte_value = "z".bytes
puts to_byte_value
# => 122 
# (What is the significance of the number 122 in relation to the character z? - 122 is the ASCII decimal (byte) value of "z")

count_character = "How many times does the letter 'a' appear in this string?".count("a")
p count_character
# => 4



