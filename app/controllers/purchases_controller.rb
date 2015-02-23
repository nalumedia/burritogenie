class PurchasesController < ApplicationController

	def index
		@purchases = Purchase.all
	end 

  def show
    @purchase = Purchase.find_by_uuid(params[:id])
    @deliverto = Deliverto.new
    @wishes = Wish.all
  end



  end