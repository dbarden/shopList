class ItemsList < ActiveRecord::Base
  belongs_to :item
  belongs_to :list
end
