class Room < ApplicationRecord
  validates :title, presence: true
  has_many :chores
  has_many :users, through: :chores

  mount_uploader :image, ImageUploader
end
