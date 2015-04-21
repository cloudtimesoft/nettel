class RechargeableRecordsController < ApplicationController
  before_action :set_rechargeable_record, only: [:show, :edit, :update, :destroy]

  # GET /rechargeable_records
  # GET /rechargeable_records.json
  def index
    @rechargeable_records = RechargeableRecord.all
  end

  # GET /rechargeable_records/1
  # GET /rechargeable_records/1.json
  def show
  end

  # GET /rechargeable_records/new
  def new
    @rechargeable_record = RechargeableRecord.new
  end

  # GET /rechargeable_records/1/edit
  def edit
  end

  # POST /rechargeable_records
  # POST /rechargeable_records.json
  def create
    @rechargeable_record = RechargeableRecord.new(rechargeable_record_params)

    respond_to do |format|
      if @rechargeable_record.save
        format.html { redirect_to @rechargeable_record, notice: 'Rechargeable record was successfully created.' }
        format.json { render :show, status: :created, location: @rechargeable_record }
      else
        format.html { render :new }
        format.json { render json: @rechargeable_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rechargeable_records/1
  # PATCH/PUT /rechargeable_records/1.json
  def update
    respond_to do |format|
      if @rechargeable_record.update(rechargeable_record_params)
        format.html { redirect_to @rechargeable_record, notice: 'Rechargeable record was successfully updated.' }
        format.json { render :show, status: :ok, location: @rechargeable_record }
      else
        format.html { render :edit }
        format.json { render json: @rechargeable_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rechargeable_records/1
  # DELETE /rechargeable_records/1.json
  def destroy
    @rechargeable_record.destroy
    respond_to do |format|
      format.html { redirect_to rechargeable_records_url, notice: 'Rechargeable record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rechargeable_record
      @rechargeable_record = RechargeableRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rechargeable_record_params
      params.require(:rechargeable_record).permit(:user_id, :preaidtime, :balance, :types, :content, :endtime, :cardnum)
    end
end
