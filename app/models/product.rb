class Product < ApplicationRecord
   include Visible
   belongs_to :category
   has_many :articles
   accepts_nested_attributes_for :articles, allow_destroy: true
   validates :price, presence: true, :inclusion => 0..10000
end
