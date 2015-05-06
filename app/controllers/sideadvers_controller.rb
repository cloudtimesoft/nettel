class SideadversController < ApplicationController
  before_action :set_sideadver, only: [:show, :edit, :update, :destroy]

  # GET /sideadvers
  # GET /sideadvers.json
  def index
    @sideadvers = Sideadver.all
  end

  # GET /sideadvers/1
  # GET /sideadvers/1.json
  def show
  end

  # GET /sideadvers/new
  def new
    @sideadver = Sideadver.new
  end

  # GET /sideadvers/1/edit
  def edit
  end

  # POST /sideadvers
  # POST /sideadvers.json
  def create
    @sideadver = Sideadver.new(sideadver_params)

    respond_to do |format|
      if @sideadver.save
        format.html { redirect_to @sideadver, notice: 'Sideadver was successfully created.' }
        format.json { render :show, status: :created, location: @sideadver }
      else
        format.html { render :new }
        format.json { render json: @sideadver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sideadvers/1
  # PATCH/PUT /sideadvers/1.json
  def update
    respond_to do |format|
      if @sideadver.update(sideadver_params)
        format.html { redirect_to @sideadver, notice: 'Sideadver was successfully updated.' }
        format.json { render :show, status: :ok, location: @sideadver }
      else
        format.html { render :edit }
        format.json { render json: @sideadver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sideadvers/1
  # DELETE /sideadvers/1.json
  def destroy
    @sideadver.destroy
    respond_to do |format|
      format.html { redirect_to sideadvers_url, notice: 'Sideadver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sideadver
      @sideadver = Sideadver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sideadver_params
      params.require(:sideadver).permit(:local, :linkto, :isenabled)
    end
end
