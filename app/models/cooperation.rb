class Cooperation < ApplicationRecord
  # Validates
  validates :name,       presence: true, length: { maximum: 11 }
  validates :email,      presence: true
  validates :text,       presence: true, length: { maximum: 140 }
end
