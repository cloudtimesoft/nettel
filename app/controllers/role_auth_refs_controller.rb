class RoleAuthRefsController < ApplicationController
  before_action :set_role_auth_ref, only: [:show, :edit, :update, :destroy]

  # GET /role_auth_refs
  # GET /role_auth_refs.json
  def index
    @role_auth_refs = RoleAuthRef.all
  end

  # GET /role_auth_refs/1
  # GET /role_auth_refs/1.json
  def show
  end

  # GET /role_auth_refs/new
  def new
    @role_auth_ref = RoleAuthRef.new
  end

  # GET /role_auth_refs/1/edit
  def edit
  end

  # POST /role_auth_refs
  # POST /role_auth_refs.json
  def create
    @role_auth_ref = RoleAuthRef.new(role_auth_ref_params)

    respond_to do |format|
      if @role_auth_ref.save
        format.html { redirect_to @role_auth_ref, notice: 'Role auth ref was successfully created.' }
        format.json { render :show, status: :created, location: @role_auth_ref }
      else
        format.html { render :new }
        format.json { render json: @role_auth_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /role_auth_refs/1
  # PATCH/PUT /role_auth_refs/1.json
  def update
    respond_to do |format|
      if @role_auth_ref.update(role_auth_ref_params)
        format.html { redirect_to @role_auth_ref, notice: 'Role auth ref was successfully updated.' }
        format.json { render :show, status: :ok, location: @role_auth_ref }
      else
        format.html { render :edit }
        format.json { render json: @role_auth_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /role_auth_refs/1
  # DELETE /role_auth_refs/1.json
  def destroy
    @role_auth_ref.destroy
    respond_to do |format|
      format.html { redirect_to role_auth_refs_url, notice: 'Role auth ref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_auth_ref
      @role_auth_ref = RoleAuthRef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def role_auth_ref_params
      params.require(:role_auth_ref).permit(:role_id, :auth_id)
    end
end
