class Chore < ApplicationRecord

  validates :name, presence: true


  belongs_to :room, inverse_of: :chores, optional: true
  belongs_to :user, inverse_of: :chores, optional: true
  has_many :comments

end
