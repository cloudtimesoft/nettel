class AdminRoleRefsController < ApplicationController
  before_action :set_admin_role_ref, only: [:show, :edit, :update, :destroy]

  # GET /admin_role_refs
  # GET /admin_role_refs.json
  def index
    @admin_role_refs = AdminRoleRef.all
  end

  # GET /admin_role_refs/1
  # GET /admin_role_refs/1.json
  def show
  end

  # GET /admin_role_refs/new
  def new
    @admin_role_ref = AdminRoleRef.new
  end

  # GET /admin_role_refs/1/edit
  def edit
  end

  # POST /admin_role_refs
  # POST /admin_role_refs.json
  def create
    @admin_role_ref = AdminRoleRef.new(admin_role_ref_params)

    respond_to do |format|
      if @admin_role_ref.save
        format.html { redirect_to @admin_role_ref, notice: 'Admin role ref was successfully created.' }
        format.json { render :show, status: :created, location: @admin_role_ref }
      else
        format.html { render :new }
        format.json { render json: @admin_role_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_role_refs/1
  # PATCH/PUT /admin_role_refs/1.json
  def update
    respond_to do |format|
      if @admin_role_ref.update(admin_role_ref_params)
        format.html { redirect_to @admin_role_ref, notice: 'Admin role ref was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_role_ref }
      else
        format.html { render :edit }
        format.json { render json: @admin_role_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_role_refs/1
  # DELETE /admin_role_refs/1.json
  def destroy
    @admin_role_ref.destroy
    respond_to do |format|
      format.html { redirect_to admin_role_refs_url, notice: 'Admin role ref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_role_ref
      @admin_role_ref = AdminRoleRef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_role_ref_params
      params.require(:admin_role_ref).permit(:admin_id, :role_id)
    end
end
