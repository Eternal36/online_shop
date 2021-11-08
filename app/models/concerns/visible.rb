module Visible
  extend ActiveSupport::Concern
  include ActiveModel::Validations

included do 
  validates :name, presence: true
  validates :position, presence: true, :inclusion => 1..1000
end
  
class_methods do
   def if_visible
     where(is_visible: true)
   end
   def sort_down
    order(:position).reverse
   end
  end
end

