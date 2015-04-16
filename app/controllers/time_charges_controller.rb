class TimeChargesController < ApplicationController
  before_action :set_time_charge, only: [:show, :edit, :update, :destroy]

  # GET /time_charges
  # GET /time_charges.json
  def index
    @time_charges = TimeCharge.all
  end

  # GET /time_charges/1
  # GET /time_charges/1.json
  def show
  end

  # GET /time_charges/new
  def new
    @time_charge = TimeCharge.new
  end

  # GET /time_charges/1/edit
  def edit
  end

  # POST /time_charges
  # POST /time_charges.json
  def create
   # @time_charge = TimeCharge.new(time_charge_params)
    @tariff_standard = TariffStandard.find(session[:tempid])
    @time_charge = @tariff_standard.time_charges.create(time_charge_params)
    redirect_to (session[:return_to])


  end

  # PATCH/PUT /time_charges/1
  # PATCH/PUT /time_charges/1.json
  def update
    respond_to do |format|
      if @time_charge.update(time_charge_params)
        format.html { redirect_to @time_charge, notice: 'Time charge was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_charge }
      else
        format.html { render :edit }
        format.json { render json: @time_charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_charges/1
  # DELETE /time_charges/1.json
  def destroy
    @time_charge.destroy
    respond_to do |format|
      format.html { redirect_to time_charges_url, notice: 'Time charge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_charge
      @time_charge = TimeCharge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_charge_params
      params.require(:time_charge).permit(:tariff_standard_id, :s_charges, :c_charges, :start_time, :end_time)
    end
end
