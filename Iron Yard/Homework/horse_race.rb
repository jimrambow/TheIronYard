#Rules:

#Must use at least two classes
#Must have at least 4 horses (All horses can NOT be different classes!
#User input must affect at least one horse's speed
#Must out put the horses' paths (even as simple as "---'horse 1'") as race progresses
#Goals: classes, methods, passing arguments to methods, thinking about the design and how classes interface with each other, DRYness, making a complete & interesting & good program

require_relative 'Horses_class.rb'

no_winner = true

class Race 

  attr_accessor :horses
  attr_accessor :place

  def begin_race
    puts "And the Race has begun!"
  end

  def movement 
    movement = Horses.track
  end

  def user_hack
    if Horses.user1
    
  end
  def racers 
 @racers = Horse.get_horses
    
  end

  
end
end

while no_winner != false

racing = Race.new
racing.begin_race
Horses.display_data

horse_array = Horses.get_horses

# horse_array.each do |horse|
#     horse.movement

#                 end
  

racers.each do |racer|
  racer.move_forward
            end

break


end
