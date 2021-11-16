class Watch < ApplicationRecord
  belongs_to :user
  validates :brand, :model, :year, presence: true
  has_many_attached :photos
end
