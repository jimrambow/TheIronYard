#Rules:

#Must use at least two classes
#Must have at least 4 horses (All horses can NOT be different classes!
#User input must affect at least one horse's speed
#Must out put the horses' paths (even as simple as "---'horse 1'") as race progresses
#Goals: classes, methods, passing arguments to methods, thinking about the design and how classes interface with each other, DRYness, making a complete & interesting & good program


class Horses 

  @@list_of_horses = []

  attr_accessor :name
  attr_accessor :position

  def initialize
    self.name = nil
    self.position = 0
  end

  def self.add_horse(*horse_variables)
    horse = Horses.new
    
    horse.name = horse_variables[0]

    @@list_of_horses.push horse
  end

  def self.add_user(*user_variables)
    add_user = Horses.new
    add_user.name = user_variables[0]

    @@list_of_horses.push add_user
  end

  def self.get_horses
  @@list_of_horses
  end

  def self.display_data
    puts "*" * 60
    @@list_of_horses.each do |racer|
        print "-" * racer.position
        puts racer.name
                           end
  end

  def track
  track = self.position.times{print"-"}
  end

  def move_forward
    self.position += rand(1..6)  
  end

  def cheat
    self.position += rand(10..20)
  end


horse1 = Horses.add_horse ("Jackrabbit")
horse2 = Horses.add_horse ("Pokey")
horse3 = Horses.add_horse ("Snips")
user1 = Horses.add_user ("Jim")
end

#Rules:

#Must use at least two classes
#Must have at least 4 horses (All horses can NOT be different classes!
#User input must affect at least one horse's speed
#Must out put the horses' paths (even as simple as "---'horse 1'") as race progresses
#Goals: classes, methods, passing arguments to methods, thinking about the design and how classes interface with each other, DRYness, making a complete & interesting & good program

