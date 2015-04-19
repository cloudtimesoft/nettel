class CfgsController < ApplicationController
  before_action :set_cfg, only: [:show, :edit, :update, :destroy]
  # GET /cfgs
  # GET /cfgs.json
  def index
    @cfgs = Cfg.all
    #cfg_count
  end

  # GET /cfgs/1
  # GET /cfgs/1.json
  def show
  end

  # GET /cfgs/new
  def new
    @cfg = Cfg.new
  end

  # GET /cfgs/1/edit
  def edit
  end

  # POST /cfgs
  # POST /cfgs.json
  def create
    @cfg = Cfg.new(cfg_params)

    respond_to do |format|
      if @cfg.save
        format.html { redirect_to @cfg, notice: 'Cfg was successfully created.' }
        format.json { render :show, status: :created, location: @cfg }
      else
        format.html { render :new }
        format.json { render json: @cfg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cfgs/1
  # PATCH/PUT /cfgs/1.json
  def update
    respond_to do |format|
      if @cfg.update(cfg_params)
        format.html { redirect_to @cfg, notice: 'Cfg was successfully updated.' }
        format.json { render :show, status: :ok, location: @cfg }
      else
        format.html { render :edit }
        format.json { render json: @cfg.errors, status: :unprocessable_entity }
      end
    end
   end

  # DELETE /cfgs/1
  # DELETE /cfgs/1.json
  def destroy
    @cfg.destroy
    respond_to do |format|
      format.html { redirect_to cfgs_url, notice: 'Cfg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cfg
      @cfg = Cfg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cfg_params
      params.require(:cfg).permit(:give_cost, :company_name, :sales_tel, :service_tel, :gateway, :content)
    end



end
