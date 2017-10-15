# Using initialize with inheritance

class Employee
  attr_reader :name

  def initialize(name = "Anonymous")
    @name = name
  end

  def name=(name)
    if name == ""
      raise "name cannot be blank"
    end
    @name = name
  end

  def print_name
    puts "Name: #{name}"
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def initialize(name = "Anonymous", salary = 0.0)
    super(name)
    self.salary = salary
  end

  def salary=(salary)
    if salary < 0
      raise "a salary of #{salary} is not valid"
    end
    @salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay this period: #{formatted_pay}."
  end
end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "a hourly wage of #{hourly_wage} is not valid."
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "hours per week of #{hours_per_week} is not valid."
    end
    @hours_per_week = hours_per_week
  end

  def self.make_cashier(name)
    HourlyEmployee.new(name, 12.5, 30)
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay for this period: #{formatted_pay}."
  end
end

bob = SalariedEmployee.new("Bob", 50000)
bob.print_pay_stub

hal = HourlyEmployee.new("Hal", 23.5, 40)
hal.print_pay_stub

kal = HourlyEmployee.make_cashier("Kal")
kal.print_pay_stub