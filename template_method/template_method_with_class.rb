class Game
  def play_game    
    initialize_game
    
    j = 0
    while (!end_of_game?)
      make_play(j)
      j = (j + 1) % players_count
    end
    
    print_winner
  end
  
  def players_count
    raise NotImplementedError.new
  end
  
  def initialize_game
    raise NotImplementedError.new
  end
  
  def make_play(player)
    raise NotImplementedError.new
  end
  
  def print_winner
    raise NotImplementedError.new
  end  
end

class Chess < Game
  def players_count
    2
  end
  
  def initialize_game
    puts 'Initialize Chess Game'
  end
  
  def make_play(player)
    puts "Player #{player} play"
  end
  
  def print_winner
    puts "The Chess Game Winner is ... #{rand(players_count)}"
  end
  
  def end_of_game?
    rand(10) > 7 ? true : false      
  end
end

class Monopoly < Game
  def players_count
    4
  end
  
  def initialize_game
    puts 'Initialize Monopoly Game'
  end
  
  def make_play(player)
    puts "Player #{player} play"
  end
  
  def print_winner
    puts "The Monopoly Game Winner is ... #{rand(players_count)}"
  end
  
  def end_of_game?
    rand(10) > 7 ? true : false      
  end
end

Chess.new.play_game
Monopoly.new.play_game