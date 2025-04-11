require './base_player.rb'

class YourPlayer < BasePlayer
  def next_point(time:)

    if time == 0
      
      move = { 
        row: 0, 
        col: 0 
      }

      puts "Player #{name} at #{time} to #{move}"
      return move
    end

    if time % (grid.max_col + 1) != grid.max_col
      move = { 
        row: time / (grid.max_col + 1), 
        col: time % (grid.max_col + 1) 
      }
      
      puts "Player #{name} at #{time} to #{move}"
      return move
    end
    
    move = { 
      row: grid.max_row, 
      col: grid.max_col 
    }
    
    puts "Player #{name} at #{time} to #{move}"
    move
  end

  def grid
    game.grid
  end
end
