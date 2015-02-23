class Wish < ActiveRecord::Base
	has_many :purchase
	belongs_to :delivertostatus
end
