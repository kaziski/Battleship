class Player < ApplicationRecord
  has_many :boards
  validates :boards, :length => { is: 2 }
  validates :name, presence: true
end
