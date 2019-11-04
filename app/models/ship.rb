class Ship < ApplicationRecord
  belongs_to :player

  validates :name, :length, presence: true

  I think the ships should be premade and seeded.
  Carrier - length 5
  Battleship - length 4
  Submarine - length 3
  Cruiser - length 2
  Patrol - length 1

  

end
