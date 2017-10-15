# Chapter 4 - Initialize

class Employee
  attr_reader :name, :salary

  def initialize(name = "Anonymous", salary = 0.0) # with optional parameters
    self.name = name
    self.salary = salary
  end

  # initialize without arguments
  # def initialize
  #   @name = "Anonymous"
  #   @salary = 0.0
  # end

  def name=(name)
    if name == ""
      raise "name cannot be blank"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "a salary of #{salary} is not valid"
    end
    @salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = format("$%4.2f", (@salary.to_f / 365) * 14) # need to use a float here
    puts "Pay for the period is #{pay_for_period}."
  end
end


# bob = Employee.new
# bob.name = "Bob"
# bob.salary = 50000
# bob.print_pay_stub

bob = Employee.new("Bob", 55000)
bob.print_pay_stub

# hal = Employee.new
# hal.print_pay_stub

hal = Employee.new("Hal", 50000)
hal.print_pay_stub

jim = Employee.new("Jim", 1000)
jim.print_pay_stub