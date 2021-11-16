ActiveAdmin.register Product do
  permit_params :name, :category_id, :is_visible, :position, :price
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
