class BurritolocationsController < ApplicationController
  before_action :set_burritolocation, only: [:show, :edit, :update, :destroy]

  # GET /burritolocations
  # GET /burritolocations.json
  def index
    @burritolocations = Burritolocation.all
  end

  # GET /burritolocations/1
  # GET /burritolocations/1.json
  def show
  end

  # GET /burritolocations/new
  def new
    @burritolocation = Burritolocation.new
  end

  # GET /burritolocations/1/edit
  def edit
  end

  # POST /burritolocations
  # POST /burritolocations.json
  def create
    @burritolocation = Burritolocation.new(burritolocation_params)

    respond_to do |format|
      if @burritolocation.save
        format.html { redirect_to @burritolocation, notice: 'Burritolocation was successfully created.' }
        format.json { render :show, status: :created, location: @burritolocation }
      else
        format.html { render :new }
        format.json { render json: @burritolocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /burritolocations/1
  # PATCH/PUT /burritolocations/1.json
  def update
    respond_to do |format|
      if @burritolocation.update(burritolocation_params)
        format.html { redirect_to @burritolocation, notice: 'Burritolocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @burritolocation }
      else
        format.html { render :edit }
        format.json { render json: @burritolocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /burritolocations/1
  # DELETE /burritolocations/1.json
  def destroy
    @burritolocation.destroy
    respond_to do |format|
      format.html { redirect_to burritolocations_url, notice: 'Burritolocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_burritolocation
      @burritolocation = Burritolocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def burritolocation_params
      params.require(:burritolocation).permit(:burritolocation_name, :burritolocation_phone, :burritolocation_url, :burritolocation_description, :burritolocation_address)
    end
end
