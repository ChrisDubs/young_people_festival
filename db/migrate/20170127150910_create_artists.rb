class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :description
      t.attachment :image
      t.string :vkontakte_link
      t.string :facebook_link
      t.string :twitter_link
      t.string :instagram_link

      t.timestamps
    end
  end
end
