# Chapter 3 - Inheritance

class Worker
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

class Mechanic < Worker
  attr_accessor :shop

  def initialize(name, age, shop)
    super(name, age)
    @shop = shop
  end

  def say_hello
    puts "Hello, my name is #{name} and I am #{age} years old. I work in the #{shop} location."
  end
end

class Salesman < Worker

end


bob = Mechanic.new("bob", 34, "downtown")
bob.say_hello
hal = Salesman.new("hal", 42)