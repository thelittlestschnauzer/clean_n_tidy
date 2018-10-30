class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :chore

  validates :content, presence: true
end
