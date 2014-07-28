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

  def initialize(name, position)
    @name = nil
    @position = 0
  end

  def add_horse(horse_variables)
    horse = Horses.new
    
    horse.name = @horse_variables[0]

    @@list_of_horses.push horse
  end

  def add_user(user_variables)
    add_user = Horses.new
    add_user.name = @user_variables[0]

    @@list_of_horses.push add_user
  end


  def display_data
    puts "*" * 60
    @@list_of_horses.each do |racer|
        print "-" * racer.position
        puts racer.name
                           end
  end

  def move_forward
    @position += rand(1..5)
  end


  def display_horses
    @@list_of_horses
  end
end


horse1 = Horses.add_horse ("Jackrabbit")
horse2 = Horses.add_horse ("Pokey")
horse3 = Horses.add_horse ("Snips")
user1 = Horses.add_user ("Jim")

Horses.display_data