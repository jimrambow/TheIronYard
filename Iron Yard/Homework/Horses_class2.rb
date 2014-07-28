#Rules:

#Must use at least two classes
#Must have at least 4 horses (All horses can NOT be different classes!
#User input must affect at least one horse's speed
#Must out put the horses' paths (even as simple as "---'horse 1'") as race progresses
#Goals: classes, methods, passing arguments to methods, thinking about the design and how classes interface with each other, DRYness, making a complete & interesting & good program


class Horses 

  attr_accessor :name
  attr_accessor :position

  def initialize
    self.name = nil
    self.position = 0
  end

  def add_horse
    horse = Horses.new
    
    horse.name.position = ["Pokey", 0]
    horse.name.position = ["Lightning", 0]
    horse.name.position = ["Chrome", 0]
  end

  # def self.get_horses
  # @@list_of_horses
  # end

  def add_user
    user = Horses.new
    user.name.position = ["Jimbo", 0]
  end


  def display_data
    puts "*" * 60
    
  end

  def position
    self.position += rand(1..5)
  end

  def track
  track = self.position.times{print"-"}
  end



end




