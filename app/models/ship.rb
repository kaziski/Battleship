class Ship < ApplicationRecord
  belongs_to :player

  validates :name, :length, presence: true

end
