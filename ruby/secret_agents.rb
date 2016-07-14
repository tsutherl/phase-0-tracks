# OUR METHOD DECLARATIONS


#encrypt
  #figure out the length of the string
  #loop through the string
  #condition check to see if character is a special character or not
  #for each index do .next method
  #reasign the index to the new value

def encrypt(str)

  length = str.length

  i = 0
  while i < length
    if str[i] != " " && str[i] != "z"
      char = str[i].next
      str[i] = char
    elsif str[i] == "z"
      str[i] = "a"
    end
    i += 1
  end

  str
end

#decrypt
  #figure out the length of the string
  #assign variable that has all the letters in order
  #loop through the string
  #condition check to see if character is a special character or not
  #check where the index of the letter is compared to the variable of the alphabet
  #subtract the value by 1
  #check where the new value is in the alphabet
  #assign new character to str at index

def decrypt(str)
  length = str.length
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  i = 0
  while i < length
    if str[i] != " "
      char_val = alphabet.index(str[i])
      char_val = char_val - 1
      str[i] = alphabet[char_val]
    end

    i += 1
  end

  str
end

def prompt
  puts "Would you like to decrypt or encrypt a password. (d for decrypt / e for encrypt)"
  answer = gets.chomp

  puts "type in a password"
  password = gets.chomp

  if answer == "d"
    puts decrypt(password)
  elsif answer == "e"
    puts encrypt(password)
  else
    puts "wrong method"
    prompt
  end
end


# OUR DRIVER CODE

prompt

#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")

#puts decrypt(encrypt("swordfish"))
# This code works because
# 1: both decrypt and encrypt are in the same scope, therefore they have access to each other.
# 2: encrypt will run first, and return a value of a new encrypted string which becomes the parameter for decrpyt method.
# 3: decrypt returns the new str.
# 4: outsputs to console.

#Release 5
  #ask users if they want to decrpyt or encrypt a password
  #if they choose decrypt
    # store choice in a variable
  #if they choose encrypt
    # store choice in a variable
  # ask user for a password
  # store password in a variable
  # based on their choice of decrypt vs encrypt use appropraite method call with password
  # print result to screen

  