class Room < ApplicationRecord
  validates :title, presence: true

  belongs_to :user

  has_many :chores
  has_many :comments, through: :chores


  accepts_nested_attributes_for :chores, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }

  mount_uploader :image, ImageUploader


end
