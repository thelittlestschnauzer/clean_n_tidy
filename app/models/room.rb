class Room < ApplicationRecord
  validates :title, presence: true
  validates_associated :chores

  has_many :chores, inverse_of: :room
  has_many :users, through: :chores

  accepts_nested_attributes_for :chores, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }

  mount_uploader :image, ImageUploader


end
