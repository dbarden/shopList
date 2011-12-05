class List < ActiveRecord::Base
  has_many :items_lists
  has_many :items, :through => :items_lists
end
