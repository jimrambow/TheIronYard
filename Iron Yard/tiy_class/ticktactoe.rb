puts "Welcome to our game of Tic Tac Toe!"

# Objective is to get 3 x's or o's in a row/column/diagonal
# Present a board
# Player one makes a choice
# Save as choice 
# Did player 1 win if so, end the game
# If not, player 2 makes a choice
# Save that choice
# Check to see if player 2 wins, if so end the game
# repeat lines 5-11

# 1 represents "X"
# 2 Represents "O"
# Global Variables
# Instance Variables
# Local Variables
# Class variables (tomorrow!)
@board = [
      [0,0,0],
      [0,0,0],
      [0,0,0]
        ]
def display_board 

  puts "display_square #{@board[0][0]}| display_square  #{@board[0][1]}| display_square #{@board[0][2]}"
  puts "-----"
  puts "display_square #{@board[1][0]}|display_square #{@board[1][1]}| display_square #{@board[1][2]}"
  puts "-----"
  puts "display_square #{@board[2][0]}|display_square #{@board[2][1]}| display_square #{@board[2][2]}"
  puts "-----"
end 


display_board

def response_grabber_1
  puts "Player 1, its your turn! (1-9) please"
    response = gets.chomp.to_i
    case response
  when 1
    @board[0][0] = 1
  when 2
    @board[0][1] = 1
  when 3
    @board[0][2] = 1
  when 4
    @board[1][0] = 1
  when 5
    @board[1][1] = 1
  when 6
    @board[1][2] = 1
  when 7
    @board[2][0] = 1
  when 8
    @board[2][1] = 1
  when 9
    @board[2][2] = 1
  end
end

def response_grabber_2
  puts "Player 2, its your turn! (1-9) please"
    response = gets.chomp.to_i
    case response
  when 0
    @board[0][0] = 2
  when 1
    @board[0][1] = 2
  when 2
    @board[0][2] = 2
  when 3
    @board[1][0] = 2
  when 4
    @board[1][1] = 2
  when 5
    @board[1][2] = 2
  when 6
    @board[2][0] = 2
  when 7
    @board[2][1] = 2
  when 8
    @board[2][2] = 2
  end
end

def display_square square
    case square
      when 0
        game_row += ' |'
      when 1
        game_row += 'X|'
      when 2
        game_row += 'O|'
      end
end

while true
display_board
response_grabber_1
response_grabber_2
end



=begin
board.each do | row |
  game_row = ""
  row.each do | square |
      case square
      when 0
        game_row += ' |'
      when 1
        game_row += 'X|'
      when 2
        game_row += 'O|'
      end
      
  end
  puts game_row
end
=end