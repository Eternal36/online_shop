class Category < ApplicationRecord
    include Visible
    has_many :products


end
