require 'pry'

#script to read the data from array of temperatures

class Thermostat
  attr_accessor :degrees
  attr_reader :target

  def initialize(temp, target)
    @degrees = temp
    @target = target
  end

  def self.detect(all_temps, target_temp)
    all_temps.each do |temp|
      reading = Thermostat.new(temp, target_temp)
      reading.controlling_temp
    end
  end

#self.target, @target and target are all the same inside of this instance method
  def controlling_temp
    if @degrees > @target
      puts "Temperature: #{degrees}. Automatic heater control: turning off heater"
    elsif @degrees < @target
      puts "Temperature: #{degrees}. Automatic heater control: turning on heater"
    else
      puts "Cool!"
  end
end

#private method can only be called inside other methods, cannot be called from other methods
#need to pass the instance to that method like: name(@name)
  private

  def turn_on_heater


end

#The temperature is being read externally somewhere, so let's just create an array of those readings
#and pass them into our class method Thermostat.detect_temperature(all_temps, target_temp)

#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22]

#set by user
target_temp = 75

#class method called to get this party started!!!
Thermostat.detect(all_temps, target_temp)
