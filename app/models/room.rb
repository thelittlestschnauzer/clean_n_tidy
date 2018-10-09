class Room < ApplicationRecord
  validates :name, presence: true

  has_many :chores
  has_many :users, through: :chores
  
end
