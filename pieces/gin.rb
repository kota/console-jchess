require './pieces/piece'

class Gin < Piece
  def move? before, after
    if @grow == true
      return move_kin before, after
    end
    
    return false unless move_ou before, after

    # 銀の横腹チェック
    return false unless before[0]-1 == after[0] && before[1] == after[1]
    return false unless before[0]+1 == after[0] && before[1] == after[1]

    if @player == :first
      return false unless before[0] == after[0] && before[1]-1 == after[1]
    else
      return false unless before[0] == after[0] && before[1]+1 == after[1]
    end
    true
  end

  def to_s
    disp "銀"
  end
end
