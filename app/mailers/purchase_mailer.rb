class PurchaseMailer < ActionMailer::Base
layout 'purchase_mailer'

 default from: "Burrito Genie (satisfy@burritogenie.com)"

 def purchase_receipt purchase
 @purchase = purchase
 mail to: purchase.email, subject: "Your Burrito Is On The Way!"

  end

end