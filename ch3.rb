# Chapter 3 - Basic Inheritance

class Worker  
  attr_accessor :name, :age

  def go_to_work(name)
    puts "#{name} is going to work." 
  end
end

class Mechanic < Worker
  attr_accessor :car

  def go_to_work(name, car)
    super(name)
    puts "#{name} is working on the car - #{car}"
  end
end

class Salesman < Worker
  attr_accessor :store

  def go_to_work(name)
    super
  end
end


bob = Mechanic.new
bob.name = "bob"
bob.age = 34
bob.car = "ford"
bob.go_to_work(bob.name, bob.car)

hal = Salesman.new
hal.name = "hal"
hal.go_to_work(hal.name)