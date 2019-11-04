class Player < ApplicationRecord
  has_many :boards
  has_many :ships
  belongs_to :game

  # each player gets two boards
  validates :boards, :length => { is: 2 }
  # each player gets five ships
  validates :ships, :length => { is: 5 }

  validates :name, presence: true
end
