ActiveAdmin.register Artist do
  before_filter except: [:index, :new, :create, :batch_action] do
    @artist = Artist.find(params[:id])
  end

  menu priority: 2
  permit_params :name, :description, :image,
                :vkontakte_link, :facebook_link,
                :twitter_link, :instagram_link,
                artist_audios_attributes:  [:id, :audio, :_destroy]

  filter :name

  index do
    selectable_column
    column :id
    column :name
    column (:description) { |description| raw(description.description) }
    image_column :image, style: :thumb
    actions
  end

  form do |f|
    f.inputs 'Добавить Артиста' do
      f.input :name
      f.input :image, as: :file, hint: f.object.image? ? image_tag(f.object.image.url, width: 200) : ''
      f.input :description, as: :ckeditor
      f.input :vkontakte_link
      f.input :facebook_link
      f.input :twitter_link
      f.input :instagram_link
      f.has_many :artist_audios, heading: 'Музыка', allow_destroy: true do |i|
        i.input :audio, as: :file, hint: i.object.persisted? ? audio_tag(i.object.audio.url, controls: true) : ''
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row (:description) { |description| raw(description.description) }
      image_row :image, style: :thumb
      row :vkontakte_link
      row :facebook_link
      row :twitter_link
      row :instagram_link

      if artist.artist_audios.any?
        h3 'Музыка'
        ul do
          artist.artist_audios.each do |audio|
            li audio.audio_file_name
          end
        end
      end
    end

    active_admin_comments
  end
end
