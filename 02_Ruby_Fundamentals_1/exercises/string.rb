greeting = "Hey What's up?"
name = "Bill"
last_name = "Johnson"
bewd_class = "Back-End Dev       "

#calcualtes number of simbols
puts "#{name} has #{name.length} characters"

#removes empty space
puts "I stripped this #{bewd_class.strip}"

#adds characters in the beginning of the string
puts "I added THe to this #{name.prepend("The ")}"

#allows to add characters in the end of the string
name_2 = name << " Cool"
puts "I prepended cool to this #{name_2}"

#chars creates an array of the characters from string
puts "This is my last name as an array #{last_name.chars}. This is of class #{last_name. chars.class}"
