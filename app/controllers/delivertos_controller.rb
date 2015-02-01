class DelivertosController < InheritedResources::Base

  private

    def deliverto_params
      params.require(:deliverto).permit(:deliverto_street, :deliverto_zip, :deliverto_phone, :deliverto_instructions, :deliverto)
    end
end

