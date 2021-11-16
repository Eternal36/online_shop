class Product < ApplicationRecord
   include Visible
   belongs_to :category
   has_many :articles
   validates :price, presence: true, :inclusion => 0..10000
end
