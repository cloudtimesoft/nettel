class AreaCodeDetailsController < ApplicationController
  before_action :set_area_code_detail, only: [:show, :edit, :update, :destroy]

  # GET /area_code_details
  # GET /area_code_details.json
  def index
    @area_code_details = AreaCodeDetail.all
  end

  # GET /area_code_details/1
  # GET /area_code_details/1.json
  def show
  end

  # GET /area_code_details/new
  def new
    @area_code_detail = AreaCodeDetail.new
  end

  # GET /area_code_details/1/edit
  def edit
  end

  # POST /area_code_details
  # POST /area_code_details.json
  def create
    @area_code_detail = AreaCodeDetail.new(area_code_detail_params)

    respond_to do |format|
      if @area_code_detail.save
        format.html { redirect_to @area_code_detail, notice: 'Area code detail was successfully created.' }
        format.json { render :show, status: :created, location: @area_code_detail }
      else
        format.html { render :new }
        format.json { render json: @area_code_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /area_code_details/1
  # PATCH/PUT /area_code_details/1.json
  def update
    respond_to do |format|
      if @area_code_detail.update(area_code_detail_params)
        format.html { redirect_to @area_code_detail, notice: 'Area code detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @area_code_detail }
      else
        format.html { render :edit }
        format.json { render json: @area_code_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /area_code_details/1
  # DELETE /area_code_details/1.json
  def destroy
    @area_code_detail.destroy
    respond_to do |format|
      format.html { redirect_to area_code_details_url, notice: 'Area code detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area_code_detail
      @area_code_detail = AreaCodeDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_code_detail_params
      params.require(:area_code_detail).permit(:province_id, :name, :area_code)
    end
end
