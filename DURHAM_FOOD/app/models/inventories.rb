class Inventories < ActiveRecord::Base
	belongs_to :category, (:supplier), (:status)
	
end
