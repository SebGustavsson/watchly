class Watch < ApplicationRecord
  belongs_to :user
  validates :brand, :model, :year, presence: true
end