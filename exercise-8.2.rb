class Game
  def initialize
    super
  end
  def play_game
    #... Whatever work is done
  end
  def get_results
    "[pretend these are game results]"
  end
end

class Player
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def list_self
    @name
  end
end

class PokerPlayer < Player
  attr_reader :hand
  def initialize(name, hand=nil)
    super(name)
    @hand = hand
  end
  def list_self
    super + ": #{@hand}"
  end
end

class Poker < Game
  def initialize
    super
  end
  def play_game
    super
    # [pretend there's code here]
  end
end

class ChessPlayer < Player
  attr_reader :color
  def initialize(name, color)
    super(name)
    @color = color
  end
  def list_self
    super + ": " + @color
  end
end

class Chess < Game
  def initialize
    super
  end
  def play_game
    super
    # [pretend there's code here]
  end
end

class GoPlayer < Player
  attr_reader :color
  def initialize(name, color)
    super(name)
    @color = color
  end
  def list_self
    super + ": " + @color
  end
end

class Go < Game
  def initialize
    super
  end
  def play
    # [pretend there's code here]
  end
end

class PlayGame
  def initialize(game, player_list)
    @game = game
    @player_list = player_list
  end
  def play
    list_players
    @game.play_game
    puts @game.get_results
    puts "\n"
  end
  def list_players
    puts "Players in the game:"
    @player_list.each { |player| puts player.list_self }
  end
  def get_player_name(i)
    @player_list[i]
  end
end

poker_game = Poker.new
p1 = PokerPlayer.new("alice")
p2 = PokerPlayer.new("bob")
p3 = PokerPlayer.new("chris")
p4 = PokerPlayer.new("dave")
pg = PlayGame.new(poker_game, [p1, p2, p3, p4])
pg.play

chess_game = Chess.new
p1 = ChessPlayer.new("alice", "white")
p2 = ChessPlayer.new("bob", "black")
pg = PlayGame.new(chess_game, [p1, p2])
pg.play

go_game = Go.new
p1 = GoPlayer.new("alice", "white")
p2 = GoPlayer.new("bob", "black")
pg = PlayGame.new(go_game, [p1, p2])
pg.play