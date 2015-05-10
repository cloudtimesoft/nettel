#coding: utf-8
class SidemessagesController < ApplicationController
  before_action :set_sidemessage, only: [:show, :edit, :update, :destroy]

  # GET /sidemessages
  # GET /sidemessages.json
  def index
    @sidemessages = Sidemessage.all
    @sidemessages = Sidemessage.paginate(page: params[:page])
  end

  # GET /sidemessages/1
  # GET /sidemessages/1.json
  def show


  end

  # GET /sidemessages/new
  def new
    @sidemessage = Sidemessage.new


  end

  # GET /sidemessages/1/edit
  def edit
  end

  # POST /sidemessages
  # POST /sidemessages.json
  def create
    @sidemessage = Sidemessage.new(sidemessage_params)
      if @sidemessage.save

        redirect_to :back
        flash[:info]="留言成功"
      else
        render new
      end


  end

  # PATCH/PUT /sidemessages/1
  # PATCH/PUT /sidemessages/1.json
  def update
    respond_to do |format|
      if @sidemessage.update(sidemessage_params)
        format.html { redirect_to @sidemessage, notice: 'Sidemessage was successfully updated.' }
        format.json { render :show, status: :ok, location: @sidemessage }
      else
        format.html { render :edit }
        format.json { render json: @sidemessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sidemessages/1
  # DELETE /sidemessages/1.json
  def destroy
    @sidemessage.destroy
    respond_to do |format|
      format.html { redirect_to sidemessages_url, notice: 'Sidemessage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sidemessage
      @sidemessage = Sidemessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sidemessage_params
      params.require(:sidemessage).permit(:contact, :tel, :content)
    end
end
