# Color
# Horses
# Style
# Year
# Brand
# MPG
# Cupholders

class Car
  @@list_of_cars = []
  attr_accessor :model
  attr_accessor :color
  attr_accessor :horsepower
  attr_accessor :year
  attr_accessor :brand
  attr_accessor :mpg
  attr_accessor :cupholders

# Constructor  
    def initialize
      puts "A new car is created"
      self.model = nil
      self.color = nil
      self.horsepower = nil
      self.year = nil
      self.brand = nil
      self.mpg = nil
      self.cupholders = nil

  end

  def display_data
    p '*' * 100
   "#{self.model} #{self.color} #{self.horsepower} #{self.year} #{self.brand} #{self.year} #{self.mpg} #{self.cupholders} " + @brand.to_s
  end

  def self.add_car(*car_attributes)
    car = Car.new
    car.model = car_attributes[0]
    car.color = car_attributes[1]
    car.horsepower = car_attributes[2]
    car.year = car_attributes[3]
    car.brand = car_attributes[4]
    car.mpg = car_attributes[5]
    car.cupholders = car_attributes[6]
    @@list_of_cars.push car
    car
  end

  def self.display_cars
    @@list_of_cars
  end

p Car.add_car("F-Type", "British Racing Green", "679", 2014, "Jaguar", 20000, false)
p Car.add_car("Elise", "Lazer Blue", 190, 2005, "Lotus", 30, false)
p Car.display_cars

# car = Car.new
# car.brand = "Ferrari"
# car.model = "La Ferrari"
# car.year = 2014
# car.mpg = 16.6
# car.cupholders = true
# car.color = "Red"
# car.horsepower = 400
# car.horsepower = 900
# p car
# p car.brand
# p car.color
# p car.horsepower
# p car.display_data

# sams_car = Car.new
# sams_car.model = "mustang"
# p sams_car.display_data
# p Car.test_method

end