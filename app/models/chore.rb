class Chore < ApplicationRecord

  validates :name, presence: true
  validates :date_assigned, presence: true

  belongs_to :user
  belongs_to :room

end
