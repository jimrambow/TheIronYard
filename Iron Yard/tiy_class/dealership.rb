require './car.rb'

class Dealership
  attr_accessor :inventory
  attr_accessor :name

  def initalize
    self.name = ""
    self.inventory = []
  end

  def add_car (*car_attributes)
    car = Car.add_car(
    car_attributes[0],
    car_attributes[1],
    car_attributes[2],
    car_attributes[3],
    car_attributes[4],
    car_attributes[5],
    car_attributes[6]
    )

    self.inventory.push car

  end

  def remove_car index
    self.delete_at index
  end

end


nickys = Dealership.new
nickys.name = "Big Nicky's"
nickys.add_car("Elise", "Lazer Blue", 190, 2005, "Lotus", 30, false)

jamies = Dealership.new
jamies.name = "Big Nicky's"
jamies.add_car("Volvo", "Lazer Blue", 190, 2005, "Lotus", 30, false)

removed_car = jamies.remove_car(0)
nickys.add_car(removed_car.model, removed_car.color, removed_car.horsepower, removed_car.)
