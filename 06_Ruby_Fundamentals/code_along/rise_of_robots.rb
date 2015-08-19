# 1 - Create/Define a class
# 2 - Set attributes and read/write capabilities
# 3 - Build a constructor (method that creates an instance of the class)
# 4 - Create our Instance of a Class (instantiate)

# class never plural
# name must be capitalized

require 'pry'
require 'pry-byebug'

class Robot
  #Attributes: name, type, origin

  #creates getter and setter methods for each attribute
  attr_accessor :name, :type, :origin

  #this method creates new instances of the robot class
  #@instance_variables are available through out the class
  #@name is an instance_variable
  def initialize(name, type, origin) #instance variables
    @name = name
    @type = type
    @origin = origin
  end

  def self.make_robots(number)
    #need to create a new robot
    new_robots = number.to_i
    new_robots.times do
      Robot.random_robot_maker
    end
  end

  def self.random_robot_maker
    special_robots = ["Sting", "Steve", "Peter", "Coney", "Garry"]
    new_types = ["Android", "Superandroid"]
    new_origin = ["NYC", "Chicago", "Boston", "Austin", "LA"]

    name = special_robots.sample
    type = new_types.sample
    origin = new_origin.sample

    robot = Robot.new(name, type, origin)
    puts  "The following robot was produced: #{name}, #{type}, #{origin}.\n"
    puts "#{robot.flying_skills}, #{robot.laser_fighting_skills}, #{robot.empathy}"
  end

  def empathy
    if name == "Steve"
      "DESTRUCTION!"
    else
      "Love is our destiny!"
    end
  end

  #this is an instance method
  #self refers to the instance of robot that called this method
  def flying_skills #(instance method)
    if type == "Superandroid"
      "Flying capability identified"
    else
      "No flying capability identified"
    end
  end

  def laser_fighting_skills #(instance method)
    if origin == "NYC"
      "Big Apple"
    else
      "Other location"
  end
end

# 1 - flying skills
# 2 - laser fighting skills
end
Robot.make_robots(10)
