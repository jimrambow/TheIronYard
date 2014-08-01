#Rules:

#Must use at least two classes
#Must have at least 4 horses (All horses can NOT be different classes!
#User input must affect at least one horse's speed
#Must out put the horses' paths (even as simple as "---'horse 1'") as race progresses
#Goals: classes, methods, passing arguments to methods, thinking about the design and how classes interface with each other, DRYness, making a complete & interesting & good program

require_relative 'Horses_class.rb'

no_winner = true

class Race 

  attr_accessor :name
  attr_accessor :horses
  attr_accessor :place

  def begin_race
    puts "And the Race has begun!"
  end

  def movement 
    movement = Horses.track
  end

  def racers
    Horses.get_horses
  end  
end

Track_length = 60

  while no_winner == true
system "clear"
    racing = Race.new
    racing.begin_race
    Horses.display_data
    horse_array = Horses.get_horses

    if gets.chomp == "cheat"
      racing.racers[3].cheat
    end

    horse_array.each do | running_horse |
      if running_horse.position >= Track_length
        no_winner = false
        puts "#{running_horse.name} Wins the race!"
      end
  
    racing.racers.each do |racer|
      racer.move_forward
    end

      
  end
end