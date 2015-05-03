# encoding: utf-8
class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  before_action :authorize
  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all





  end

  # GET /admins/1
  # GET /admins/1.json
  def show
    @admin = Admin.find(params[:id])
    @role = Role.all
    @had_role_ids = @admin.roles.map(&:id)

  end

  # GET /admins/new
  def new
    @admin = Admin.new


  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  # POST /admins.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
        flash[:success]='更改已被成功保存！'
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy_multiple

    @admin= Admin.find(params[:aid])
  #  @ref = @role.role_auth_refs
    AdminRoleRef.delete_all("admin_id = "+ params[:aid])
    if params[:role_ids]
      params[:role_ids].each do |t|
        AdminRoleRef.create(admin_id:params[:aid],role_id:t)
      end
      flash[:error]='更改已被成功保存！'
    end
    # RoleAuthRef.save
    # render 'show'
    redirect_to @admin
  end


  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def chkrpt
    @admin=Admin.find_by_name(params[:user_name])
    if @admin
      json=false
    else
      json=true
    end
    #debugger
    respond_to do |format|
      format.js {render :text=>json}
    end
    #debugger
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin

      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:name, :password, :password_confirmation, :content, :status)
    end
end
