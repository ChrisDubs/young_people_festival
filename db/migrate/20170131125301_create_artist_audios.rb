class CreateArtistAudios < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_audios do |t|
      t.attachment :audio
      t.integer :artist_id

      t.timestamps
    end
  end
end
