ActiveAdmin.register Product do
  permit_params :name, :category_id, :is_visible, :position, :price, articles_attributes: [:id, :number, :_destroy]

  index do 
    selectable_column
    column :id
    column :name
    column :category
    column :is_visible
    column :position
    column :price
    column :articles do |article|
      safe_join(article.articles.map { |ar| link_to(ar.number, admin_article_path(ar)) }, ", ".html_safe)
    end
    actions
  end

  show do |article|
    attributes_table do
      row :id
      row :name
      row :category
      row :is_visible
      row :position
      row :price
      row :articles do |article|
        article.articles.map { |ar| ar.number }.join(", ").html_safe
      end
    end
  end


  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Product" do
      f.input :name
      f.has_many :articles, allow_destroy: true do |n_f|
        n_f.input :number
      end
    end

    f.actions

  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :category_id, :is_visible, :position, :price
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :category_id, :is_visible, :position, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
