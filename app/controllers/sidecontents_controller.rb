class SidecontentsController < ApplicationController
  before_action :set_sidecontent, only: [:show, :edit, :update, :destroy]

  # GET /sidecontents
  # GET /sidecontents.json
  def index
    @sidecontents = Sidecontent.all
    @sideclas = Sidecla.all
    @admins =Admin.all
  end

  # GET /sidecontents/1
  # GET /sidecontents/1.json
  def show
    @sideclas = Sidecla.all
  end

  # GET /sidecontents/new
  def new

    @sidecontent = Sidecontent.new
  end

  # GET /sidecontents/1/edit
  def edit
  end

  # POST /sidecontents
  # POST /sidecontents.json
  def create
    @sidecontent = Sidecontent.new(sidecontent_params)

    respond_to do |format|
      if @sidecontent.save
        format.html { redirect_to @sidecontent, notice: 'Sidecontent was successfully created.' }
        format.json { render :show, status: :created, location: @sidecontent }
      else
        format.html { render :new }
        format.json { render json: @sidecontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sidecontents/1
  # PATCH/PUT /sidecontents/1.json
  def update
    respond_to do |format|
      if @sidecontent.update(sidecontent_params)
        format.html { redirect_to @sidecontent, notice: 'Sidecontent was successfully updated.' }
        format.json { render :show, status: :ok, location: @sidecontent }
      else
        format.html { render :edit }
        format.json { render json: @sidecontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sidecontents/1
  # DELETE /sidecontents/1.json
  def destroy
    @sidecontent.destroy
    respond_to do |format|
      format.html { redirect_to sidecontents_url, notice: 'Sidecontent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sidecontent
      @sidecontent = Sidecontent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sidecontent_params
      params.require(:sidecontent).permit(:sidecla_id, :title, :inpaper, :oprice, :pprice, :content, :time, :admin_id)
    end
end
