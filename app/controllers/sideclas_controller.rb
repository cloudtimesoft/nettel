class SideclasController < ApplicationController
  before_action :set_sidecla, only: [:show, :edit, :update, :destroy]

  # GET /sideclas
  # GET /sideclas.json
  def index
    @sideclas = Sidecla.all
  end

  # GET /sideclas/1
  # GET /sideclas/1.json
  def show
  end

  # GET /sideclas/new
  def new
    @sidecla = Sidecla.new
  end

  # GET /sideclas/1/edit
  def edit
  end

  # POST /sideclas
  # POST /sideclas.json
  def create
    @sidecla = Sidecla.new(sidecla_params)

    respond_to do |format|
      if @sidecla.save
        format.html { redirect_to @sidecla, notice: 'Sidecla was successfully created.' }
        format.json { render :show, status: :created, location: @sidecla }
      else
        format.html { render :new }
        format.json { render json: @sidecla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sideclas/1
  # PATCH/PUT /sideclas/1.json
  def update
    respond_to do |format|
      if @sidecla.update(sidecla_params)
        format.html { redirect_to @sidecla, notice: 'Sidecla was successfully updated.' }
        format.json { render :show, status: :ok, location: @sidecla }
      else
        format.html { render :edit }
        format.json { render json: @sidecla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sideclas/1
  # DELETE /sideclas/1.json
  def destroy
    @sidecla.destroy
    respond_to do |format|
      format.html { redirect_to sideclas_url, notice: 'Sidecla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sidecla
      @sidecla = Sidecla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sidecla_params
      params.require(:sidecla).permit(:keywords, :title, :renderto)
    end
end
