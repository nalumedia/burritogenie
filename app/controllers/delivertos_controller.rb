class DelivertosController < ApplicationController
				before_action :authenticate_user!, except: [:show]
				before_filter :correct_user, :only => [:destroy]

	def index 
			@delivertos = Deliverto.all	
	end 

	def show 
			@delivertos = Deliverto.all	
	end 

	def new 
			@deliverto = Deliverto.new
			@delivertostatuses = Delivertostatus.all
	end 

	def edit 
		  @deliverto = Deliverto.find(params[:id])
			@delivertostatuses = Delivertostatus.all
	end 

	def update
    respond_to do |format|
      if @deliverto.update(deliverto_params)
        format.html { redirect_to @deliverto, notice: 'Deliverto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @deliverto.errors, status: :unprocessable_entity }
      end
    end
  end

    def destroy
			    @deliverto = Deliverto.find(params[:id])
			    if @deliverto.present?
			    @deilverto.destroy
			    end
			    redirect_to delivertos_path
			    end
 




  private
  	def set_deliverto
      @deliverto = Deliverto.find(params[:id])
    end

    


    def deliverto_params
      params.require(:deliverto).permit(:deliverto_street, :deliverto_zip, :deliverto_phone, :deliverto_instructions, :deliverto, :delivertostatus_id)
    end
end

