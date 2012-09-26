class Product < ActiveRecord::Base
  attr_accessible :max_images, :name, :price
  has_many :items
end
