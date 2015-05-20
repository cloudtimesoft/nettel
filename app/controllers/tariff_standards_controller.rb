class TariffStandardsController < ApplicationController
  before_action :set_tariff_standard, only: [:show, :edit, :update, :destroy]
  before_action :authorize
  # GET /tariff_standards
  # GET /tariff_standards.json
  def index
    @tariff_standards = TariffStandard.all
end

  def daydefault
    @tariff_standards = TariffStandard.all
    @tariff_standards.update_all(isdefault:'0')

  end
  # GET /tariff_standards/1
  # GET /tariff_standards/1.json
  def show
  end

  # GET /tariff_standards/new
  def new
    @tariff_standard = TariffStandard.new
  end

  # GET /tariff_standards/1/edit
  def edit
  end

  # POST /tariff_standards
  # POST /tariff_standards.json
  def create
    @tariff_standard = TariffStandard.new(tariff_standard_params)

    respond_to do |format|
      if @tariff_standard.save
        format.html { redirect_to @tariff_standard, notice: 'Tariff standard was successfully created.' }
        format.json { render :show, status: :created, location: @tariff_standard }
      else
        format.html { render :new }
        format.json { render json: @tariff_standard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tariff_standards/1
  # PATCH/PUT /tariff_standards/1.json
  def update
    respond_to do |format|
      if @tariff_standard.update(tariff_standard_params)
        format.html { redirect_to @tariff_standard, notice: 'Tariff standard was successfully updated.' }
        format.json { render :show, status: :ok, location: @tariff_standard }
      else
        format.html { render :edit }
        format.json { render json: @tariff_standard.errors, status: :unprocessable_entity }
      end
    end
  end




  def check
    @tariff_standard=TariffStandard.find_by_name(params[:user_name])
    if  @tariff_standard
      json=false
    else
      json=true
    end
    #debugger
    respond_to do |format|
      format.js {render :text=>json}
    end
    #debugger
  end
  # DELETE /tariff_standards/1
  # DELETE /tariff_standards/1.json
  def destroy
    @tariff_standard.destroy
    respond_to do |format|
      format.html { redirect_to tariff_standards_url, notice: 'Tariff standard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tariff_standard
      @tariff_standard = TariffStandard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tariff_standard_params
      params.require(:tariff_standard).permit(:name, :content, :minus_amount,:isdefault)
    end
end
