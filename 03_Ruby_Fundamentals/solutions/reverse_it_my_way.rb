#1we need a word
#2we need a string
#3we need to break it up using .chars
#4we need to .downcase it
#5we need to create another variable word = ""

#go char in pry
#(char).pop - takes away the last letter and returns it
#GOAL - take something from array and put it to a new one "word"
#5creating 'until' condition. looping the process with 'until'. So until smth.length == 0
#add 'puts' to keep running the method

#.pop is taking away (check pry)

#push letter (that returns) into new string ('char') - shovel the laste letter into word

require 'pry'

#create method
def reverse_l(string)
  char = string.downcase.chars #transforming string into array of characters
  word = "" #create an empty string for new word
  until char.length == 0
    word << char.pop #adding taken away letter and returned and put add it into new array
  end
  word
end

def correct?(word)
  if word.downcase.strip == reverse_l(word).downcase
    "Nice!"
  else
    "Nope!"
  end
end

#call the method
word = gets.strip
puts correct?(word)


# == comparison
# = input
# === object
