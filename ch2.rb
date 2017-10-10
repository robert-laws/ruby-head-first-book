# basic methods and calls

def say_hello
  puts "hello!"
end

def say_hello_with_name(name)
  puts "hello, #{name}!"
end

def meeting_info(topic, name = "Unknown person") # optional parameter
  puts "#{name} will discuss #{topic} at our meeting"
end

say_hello # method call without arguments
say_hello_with_name("Hal") # method call with one argument - name
meeting_info("homework assignments", "Kal")
meeting_info("vacation plans")


# return value of a method
def counting(limit) # this method receives an integer argument and returns an array
  numbers = []
  if limit.is_a?(Integer)
    count = 0
    while count < limit
      numbers << count
      count += 1
    end
  end  
  numbers
end

p counting(12)
p counting("five")

# Classes
# A Class knows about itself = instance variables
# A Class does things = instance methods

class Person
  def name=(name)
    @name = name
  end

  def name
    @name
  end
end

bob = Person.new
bob.name = "Bob"
p bob.name

class Car
  attr_reader :year

  def year=(year)
    @year = year.is_a?(Integer) ? year : 0
  end
end

ford = Car.new
ford.year = 2012
p ford.year

kia = Car.new
kia.year = "old"
p kia.year

class Boat
  attr_accessor :name
  attr_reader :year

  def initialize(name)
    @name = name
  end

  def year=(year)
    if year < 2000
      raise "The year has to be more than 2000"
    end
    @year = year
  end

  def show_info
    puts "The boat's name is #{name} from #{year}."
  end
end

tug = Boat.new("Tug")
tug.year = 2011
tug.show_info