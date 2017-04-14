class Web < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :url, presence: true
  validates :description, length: { minimum: 10 }
end
