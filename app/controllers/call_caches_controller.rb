class CallCachesController < ApplicationController
  before_action :set_call_cach, only: [:show, :edit, :update, :destroy]

  # GET /call_caches
  # GET /call_caches.json
  def index
    @call_caches = CallCache.all
  end

  # GET /call_caches/1
  # GET /call_caches/1.json
  def show
  end

  # GET /call_caches/new
  def new
    @call_cach = CallCache.new
  end

  # GET /call_caches/1/edit
  def edit
  end

  # POST /call_caches
  # POST /call_caches.json
  def create
    @call_cach = CallCache.new(call_cach_params)

    respond_to do |format|
      if @call_cach.save
        format.html { redirect_to @call_cach, notice: 'Call cache was successfully created.' }
        format.json { render :show, status: :created, location: @call_cach }
      else
        format.html { render :new }
        format.json { render json: @call_cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /call_caches/1
  # PATCH/PUT /call_caches/1.json
  def update
    respond_to do |format|
      if @call_cach.update(call_cach_params)
        format.html { redirect_to @call_cach, notice: 'Call cache was successfully updated.' }
        format.json { render :show, status: :ok, location: @call_cach }
      else
        format.html { render :edit }
        format.json { render json: @call_cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call_caches/1
  # DELETE /call_caches/1.json
  def destroy
    @call_cach.destroy
    respond_to do |format|
      format.html { redirect_to call_caches_url, notice: 'Call cache was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call_cach
      @call_cach = CallCache.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_cach_params
      params.require(:call_cach).permit(:user_id, :begin_time)
    end
end
