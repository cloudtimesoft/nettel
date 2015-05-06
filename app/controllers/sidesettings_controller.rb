class SidesettingsController < ApplicationController
  before_action :set_sidesetting, only: [:show, :edit, :update, :destroy]

  # GET /sidesettings
  # GET /sidesettings.json
  def index
    @sidesettings = Sidesetting.all
  end

  # GET /sidesettings/1
  # GET /sidesettings/1.json
  def show
  end

  # GET /sidesettings/new
  def new
    @sidesetting = Sidesetting.new
  end

  # GET /sidesettings/1/edit
  def edit
  end

  # POST /sidesettings
  # POST /sidesettings.json
  def create
    @sidesetting = Sidesetting.new(sidesetting_params)

    respond_to do |format|
      if @sidesetting.save
        format.html { redirect_to @sidesetting, notice: 'Sidesetting was successfully created.' }
        format.json { render :show, status: :created, location: @sidesetting }
      else
        format.html { render :new }
        format.json { render json: @sidesetting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sidesettings/1
  # PATCH/PUT /sidesettings/1.json
  def update
    respond_to do |format|
      if @sidesetting.update(sidesetting_params)
        format.html { redirect_to @sidesetting, notice: 'Sidesetting was successfully updated.' }
        format.json { render :show, status: :ok, location: @sidesetting }
      else
        format.html { render :edit }
        format.json { render json: @sidesetting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sidesettings/1
  # DELETE /sidesettings/1.json
  def destroy
    @sidesetting.destroy
    respond_to do |format|
      format.html { redirect_to sidesettings_url, notice: 'Sidesetting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sidesetting
      @sidesetting = Sidesetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sidesetting_params
      params.require(:sidesetting).permit(:name, :logo, :tel, :address, :icp)
    end
end
