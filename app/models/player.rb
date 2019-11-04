class Player < ApplicationRecord
  has_many :ships
  belongs_to :game

  # each player gets two boards
  # each player gets five ships
  validates :ships, :length => { is: 5 }

  validates :name, presence: true
  validate :game_id, :name, :presence => true

  def turn_count
    # checks how many spots are filled on the board.
  end

  def current_player
    # if the turn_count is not even, it's X's turn.
    # if not O's turn.
  end

end
