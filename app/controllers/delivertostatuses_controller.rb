class DelivertostatusesController < InheritedResources::Base



  private

    def delivertostatus_params
      params.require(:delivertostatus).permit(:delivertostatus_name, :deliverttostatus_definition)
    end
end

