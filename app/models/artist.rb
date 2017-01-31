class Artist < ApplicationRecord
  # Associations
  has_many :artist_audios

  accepts_nested_attributes_for :artist_audios,  allow_destroy: true

  # Paperclip
  has_attached_file :image, styles: { thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  # Validates
  validates :name,        presence: true
  validates :description, presence: true
  validates :image,       presence: true
end
