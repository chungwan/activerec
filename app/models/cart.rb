class Cart < ActiveRecord::Base
  attr_accessible :totalprice
  has_many :items
end
