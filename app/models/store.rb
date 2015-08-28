class Store < ActiveRecord::Base

	has_many :items, :through => :purchases
	
	


end
