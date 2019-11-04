class Game < ApplicationRecord
  has_many :players
  # there are two players
  validates :players, :length => { is: 2 }


  def hit(coordinates)
    The coordinates finds the exact spot/cell/string in an array.
    It checks what the cell contains.
    
    if the string contains a name of a ship, 
      change the content to "HIT"
    elsif
      the string is "Hit", throw an error
    else  
      it's a empty string, it prints "miss"
    end
  end

  def sunk?
    Checks the spot/cell/string of a ship.
    If the whole length contains "HIT", true
  end

  def ships_left
    set ships left state to five and each time a ship is sunk,
    substruct one.
  end

  def game_over?
    if one player's ships_left == 0,
      true
    end
  end




end
