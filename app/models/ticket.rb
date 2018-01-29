class Ticket < ApplicationRecord
  # Paperclip
  has_attached_file :image, styles: { thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  # Validates
  validates :name,        presence: true, length: { maximum: 10 }
  validates :image,       presence: true
  validates :price,       presence: true, numericality: { greater_then: 0, less_then: 1000 }
end
