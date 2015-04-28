class BasicChargesController < ApplicationController
  before_action :set_basic_charge, only: [:show, :edit, :update, :destroy]

  # GET /basic_charges
  # GET /basic_charges.json
  def index
    @basic_charges = BasicCharge.all
  end

  # GET /basic_charges/1
  # GET /basic_charges/1.json
  def show
  end

  # GET /basic_charges/new
  def new
    @basic_charge = BasicCharge.new
  end

  # GET /basic_charges/1/edit
  def edit
  end

  # POST /basic_charges
  # POST /basic_charges.json
  def create
    #@basic_charge = BasicCharge.new(basic_charge_params)
    @tariff_standard = TariffStandard.find(session[:tempid])
    @basic_charge = @tariff_standard.basic_charges.create(basic_charge_params)
    redirect_to (session[:return_to])




  end

  # PATCH/PUT /basic_charges/1
  # PATCH/PUT /basic_charges/1.json
  def update
    #respond_to do |format|
      if @basic_charge.update(basic_charge_params)
        redirect_to (session[:return_to])

        #format.html { redirect_to @basic_charge, notice: 'Basic charge was successfully updated.' }
        #format.json { render :show, status: :ok, location: @basic_charge }
      else
        format.html { render :edit }
        format.json { render json: @basic_charge.errors, status: :unprocessable_entity }
      end
    #end
  end

  # DELETE /basic_charges/1
  # DELETE /basic_charges/1.json
  def destroy
    @basic_charge.destroy
      redirect_to (session[:return_to])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basic_charge
      @basic_charge = BasicCharge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basic_charge_params
      params.require(:basic_charge).permit(:tariff_standard_id, :s_charges, :c_charges)
    end
end
