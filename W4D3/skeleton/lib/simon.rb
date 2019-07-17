class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until self.game_over == true
      take_turn
    end
    game_over_message
    reset_game
    
  end

  def take_turn
    show_sequence
    sleep 1
    print "\r" + ("\e[A\e[K"*3)
    require_sequence
    if self.game_over == false
      round_success_message
      @sequence_length += 1
    end

  end

  def show_sequence
    add_random_color
    puts self.seq
  end

  def require_sequence
    puts "Repeate Pattern"
    input = gets.chomp
    # answer = input.split(',')
    if input != self.seq[-1]
      self.game_over = true
    end
  end

  def add_random_color
    ramdom_color = COLORS.sample(1)
    self.seq += ramdom_color

  end

  def round_success_message
    puts "Success!"

  end

  def game_over_message
    puts "Game over, number of repetitions #{sequence_length}"
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    self.game_over = false

  end
end

if $PROGRAM_NAME = __FILE__
  new_game = Simon.new
  new_game.play
end
