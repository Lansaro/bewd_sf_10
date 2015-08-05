#array_work
states = ["New York", "California", "Florida", "Texas"]
europe = ["France", "Germany", "Netherlands", "Italy"]
finance = ["dollar", "yen", "euro"]

puts "Just see #{states.pop}"
puts ""
puts "Removed #{europe.pop}"
puts ""
puts "LOOK! #{europe.shift}"
puts ""

name = Poland
europe.push(name)
puts "Added #{name} to list"
puts "#{name}"

puts "I want to go to #{europe.push("Greece", "Spain", "Belgium")}"
puts ""
puts "SEE #{europe.push("Germany")}"
puts ""
puts europe.uniq!
puts ""
puts europe.unshift
puts ""
puts states.size
puts ""
puts europe.size
puts ""
puts finance.size
puts ""
puts finance.include?("dollar")
puts ""
puts finance << "canadian dollar"
puts ""
puts states
puts ""
puts europe
puts ""
puts finance
puts ""
