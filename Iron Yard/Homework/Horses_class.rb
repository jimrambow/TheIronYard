#Rules:

#Must use at least two classes
#Must have at least 4 horses (All horses can NOT be different classes!
#User input must affect at least one horse's speed
#Must out put the horses' paths (even as simple as "---'horse 1'") as race progresses
#Goals: classes, methods, passing arguments to methods, thinking about the design and how classes interface with each other, DRYness, making a complete & interesting & good program

class Horses 
  @@list_of_horses = []

  attr_accessor :speed
  attr_accessor :horse

  def self.horse_speeds(*horse_speeds)
    horse_1 = Horses.new
      horse1_speed.(:speed.rand(4))
    horse_2 = Horses.new
      horse2_speed.(:speed.rand(6))
    horse_3 = Horses.new
      horse3_speed.(:speed.rand(7))

  @@list_of_horses.push hourse_1, hourse_2, house_3
  
  end

  def self.users_horse
    
  end


  def start_race
    puts "And they're off folks!"
    self.speed = nil
    self.horse = []
  end

  def display_data
    p self.speed 
    "#{self.horse_1} #{self.horse_2} #{self.horse_3}"
  end



  
  puts @@list_of_horses
end