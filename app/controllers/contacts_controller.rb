class ContactsController < InheritedResources::Base
				before_action :authenticate_user!, except: [:show]


  private

    def contact_params
      params.require(:contact).permit(:contact_name, :contact_email, :contact_zip, :contact_status)
    end
end

