class Board < ApplicationRecord

  belongs_to :player
  validates :name, presence: true

  I think the boards should be premade and seeded.
  board1_state
  board1_attack
  board2_state
  board2_attack
  Each board consists of ten arrays of ten empty strings to start

  def place_ship(starting coordinates, name_of_ship, orientation)
    Places a head of ship at starting coordinates.
    Places a ship following the orientation.
    Fills empty strings on current player's state board 
    and oppornent's attach board with the name_of_ship. 
    Change the boolean placed to true
  end

  def cells_available?(starting coordinates, length of ship, orientation)
    if fits_on_board? == true, 
      Determines if cells are open using starting coodinates, length of the ship, and orientation
      if the whole length of ship shows "", returns true
    else
      false
      throw an error 
    end
  end

  def fits_on_board?(starting coordinates, length of ship, orientation)
    Determines if the ship will fit within the board.
    returns true if it does.
    False if it doesn't and throw an error.
  end
end
