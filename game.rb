class Game 
  def initialize
    @player_one = Player.new("Player One")
    @player_two = Player.new("Player Two")
  end

  def start_game
    puts "Welcome, new game initialized"
    new_turn
  end

  def new_turn
    @player_one.ask_question
    check_score
    @player_two.ask_question
    check_score
    stats
    puts "-----NEW-TURN-----"
    new_turn
  end

  def check_score
    if @player_one.dead
      win(player_two)
    else @player_two.dead
      win(player_one)
    end
  end

  def stats
    puts "P1: #{player_one.lives}/3 vs P2: #{player_two.lives}"
  end

  def win(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "-----GAME-OVER-----"
    puts "Goodbye!"
  end
end