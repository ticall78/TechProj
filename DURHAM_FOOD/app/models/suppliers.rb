class Suppliers < ActiveRecord::Base
	has_many :inventories
end
