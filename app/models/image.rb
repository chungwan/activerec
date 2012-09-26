class Image < ActiveRecord::Base
  attr_accessible :location
  has_and_belongs_to_many :items
end
