class Item < ActiveRecord::Base
  
has_many :stores, :through => :purchases
has_many :users, :through => :purchases


end
