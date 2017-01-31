ActiveAdmin.register Ticket do
  before_filter except: [:index, :new, :create, :batch_action] do
    @category = Ticket.find(params[:id])
  end

  menu priority: 2
  permit_params :name, :description, :image, :price

  filter :name

  index do
    selectable_column
    column :id
    column :name
    column (:description) { |description| raw(description.description) }
    image_column :image, style: :thumb
    column :price
    actions
  end

  form do |f|
    f.inputs 'Добавить Билет' do
      f.input :name
      f.input :description, as: :ckeditor
      f.input :image, as: :file, hint: f.object.image? ? image_tag(f.object.image.url, width: 200) : ''
      f.input :price
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row (:description) { |description| raw(description.description) }
      image_row :image, style: :thumb
      row :price
    end

    active_admin_comments
  end
end
