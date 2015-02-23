class Purchase < ActiveRecord::Base
	after_create :email_purchaser
	belongs_to :wish


	def to_param
		 uuid
	end

	private

	def email_purchaser
	   PurchaseMailer.purchase_receipt(self).deliver
	end

end


