class Purchase < ActiveRecord::Base
	belongs_to :user
	belongs_to :store
	belongs_to :item
	
end
