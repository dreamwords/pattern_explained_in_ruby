class Game
  def initialize(initializer, players_count, end_of_game, make_play, print_winner)
    @initializer = initializer
    @players_count = players_count
    @end_of_game = end_of_game
    @make_play = make_play
    @print_winner = print_winner
  end
  
  def play_game
    @initializer.call
    
    j = 0
    
    while (!@end_of_game.call)
      @make_play.call(j)
      j = (j + 1) % player_count
    end
    
    @print_winner.call
  end
  
  def player_count
    @count ||= @players_count.call
  end
end



Game.new(  -> { puts "Initialize Chess Game" },
           -> { 2 },
           -> { return (rand(10) > 7 ? true : false) }, 
           -> (player) { puts "Player #{player} is playing " },
           -> { puts "The Chess Game Winner is ... " } ).play_game