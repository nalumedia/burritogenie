class PurchasesController < ApplicationController
  def show
    @purchase = Purchase.find_by_uuid(params[:id])
    @deliverto = Deliverto.new
  end

  end