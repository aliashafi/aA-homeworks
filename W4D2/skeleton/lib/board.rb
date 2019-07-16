class Board
  attr_accessor :cups, :player1, :player2

  def initialize(name1, name2)
    all_cups = Array.new(14) {Array.new()}
    @cups = all_cups.map.with_index do |ele,idx|
      if (idx != 13 )&& (idx != 6)
        ele += [:stone, :stone,:stone,:stone]
      else
        []
      end
    end
    @player1 = name1
    @player2 = name2
    
    
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if !((start_pos <= 14) && (start_pos >=0))
      raise "Invalid starting cup"
    end
    if self.cups[start_pos].empty?
      raise "Starting cup is empty"
    end
    
  end

  def make_move(start_pos, current_player_name)

    
    rock_count = self.cups[start_pos].length
    self.cups[start_pos] = []
    side = 6

    if self.player1 == current_player_name 
      side = 13
    end
    next_pos = 0
    (1..rock_count).each do |stone|
      next_pos = (start_pos + stone) % self.cups.length
      if next_pos == side
        rock_count += 1
      else
        self.cups[next_pos] << :stone
      end
    end

    render
    next_turn(next_pos)
    if self.cups[next_pos].empty?
      return :switch
    else
      return next_pos
    end
    


  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    self.cups[0...5].any? {|ele| ele.empty?} #|| self.cups[6...12].any? {|ele| ele.empty?}
  end

  def winner
    if self.cups[6].length > self.cups[13].length
      return self.player1
    elsif self.cups[6].length < self.cups[13].length
      return self.player2
    else
      return :draw
    end
  end
end
