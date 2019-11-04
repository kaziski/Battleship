class Game < ApplicationRecord
  has_many :players

  # there are two players
  validates :players, :length => { is: 2 }

  def initialize_game
    # this would create an ten arrays of ten empty strings and set it to @game
    # @game = [
      ["", "", "", "", "", "",]
    ]
  end

  def hit
  end

  def miss
  end




end
