ActiveAdmin.register Artist do
  before_filter except: [:index, :new, :create, :batch_action] do
    @category = Artist.friendly.find(params[:id])
  end

  menu priority: 2
  permit_params :name, :description, :image

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
    end
  end
end
