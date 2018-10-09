class Chore < ApplicationRecord

  validates :name, presence: true
  validates :date_assigned, presence: true

  has_many :rooms
  has_many :chores, through: :rooms
  
end
