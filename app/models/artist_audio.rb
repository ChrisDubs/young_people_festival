class ArtistAudio < ApplicationRecord
  # Associations
  belongs_to :artist

  # Paperclip
  has_attached_file :audio
  validates_attachment_content_type :audio, content_type: [ 'audio/mpeg',
                                                               'audio/x-mpeg',
                                                               'audio/mp3',
                                                               'audio/x-mp3',
                                                               'audio/mpeg3',
                                                               'audio/x-mpeg3',
                                                               'audio/mpg',
                                                               'audio/x-mpg',
                                                               'audio/x-mpegaudio' ]

  # Validates
  validates :audio, presence: true
end
