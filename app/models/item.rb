class Item < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  has_and_belongs_to_many :images
  attr_accessible :num_images
end
