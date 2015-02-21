class DelivertosController < InheritedResources::Base
				before_action :authenticate_user!, except: [:show]
	def new 
			@deliverto = Deliverto.new
			@delivertostatuses = Delivertostatus.all
	end 

	def edit 
		  @deliverto = Deliverto.find(params[:id])
			@delivertostatuses = Delivertostatus.all
	end 




  private

    def deliverto_params
      params.require(:deliverto).permit(:deliverto_street, :deliverto_zip, :deliverto_phone, :deliverto_instructions, :deliverto, :delivertostatus_id)
    end
end

