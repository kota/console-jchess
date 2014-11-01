require './pieces/piece'

class Kyo < Piece
  def move? before, after
    if @grow == true
      return move_kin before, after
    end

    return true if before[0] == after[0]
    if @player == :first
      return false unless before[1] >= after[1]
    else
      return false unless before[1] <= after[1]
    end
    true
  end

  def to_s
    disp "香"
  end

  def can_next? pos
    return true if @grow == true
    if @player == :first
      return false if pos[1] <= 0
    else
      return false if pos[1] >= 8
    end
  end
end
