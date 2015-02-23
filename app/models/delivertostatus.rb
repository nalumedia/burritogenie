class Delivertostatus < ActiveRecord::Base
	
		has_many :delivertos
		has_many :wishes
end
