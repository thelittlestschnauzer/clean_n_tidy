class Room < ApplicationRecord
  validates :title, presence: true
  validates_associated :chores
  
  has_many :chores, inverse_of: :room
  has_many :users, through: :chores

  accepts_nested_attributes_for :chores, reject_if: :all_blank, allow_destroy: true

  mount_uploader :image, ImageUploader


end
