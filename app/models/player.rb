class Player < ApplicationRecord
  has_many :ships
  has_many :boards
  belongs_to :game

  # each player gets two boards
  validates :boards, :length => { is: 2 }
  # each player gets five ships
  validates :ships, :length => { is: 5 }

  validates :name, presence: true
  validate :game_id, :name, :presence => true

  def turn_count
    checks how many spots are filled on the board.
  end

  def current_player
    if the turn_count is not even
       it's first player's turn.
    else  
      second player's turn
    end
  end

  def winner
    if game_over? == true,
      see which player won.
      return name of the winner
  end

end
