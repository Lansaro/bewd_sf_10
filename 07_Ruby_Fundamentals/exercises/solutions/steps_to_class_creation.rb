require 'pry'

#High-level class creation plan:
          #1-Define the class (With uppercase letter)
#State    #2-Determine attributes (of the class, like: age, color, size, etc.)
          #3-Ability to create Instances of class
          #4-Getter and setters - Ability to get values and set values

#Behavior     #Business
# - Defined by Intance methods
# - Defined by Class methods
# - Defined by Private methods

#Instance method defines only specific behaior that only has
#Class method that cannot be accessed off the instance of the Class (provides behavior to all the Class)
#Class method can be accessed/Called outside of the Class
# Example: Robot.new (it creates a new instance of Robot)

  #person has simple name, age, hometown

  #attr_reader #:name, :age, :home_town (creates getters for attributes defined "def name @name end") - only readable content
  #attr_writer #:name, :age, :home_town (creates setters for attributes defined "def name=value @name=value end") - editable content
  #attr_accessor #attr_reader + attr_writer

  #methods are not determined by auto_accessor

class Person
attr_accessor :name, :age, :home_town

  #ability to create an instance of the calss
  #ability to set up values
  #this makes person.new available
  def initialize(name, age, home_town)
    @name = name
    @age = age
    @home = home_town
  end
end
  #def name=value (instance variable)
    #@name=value
  #end

binding.pry
brad = Person.new("Brad", 50, "New Orleans")
