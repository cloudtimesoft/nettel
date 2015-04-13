class LoginsController < ApplicationController
  def new

  end

  def create
    admin = Admin.find_by(name:params[:login][:name])
    if admin && admin.authenticate(params[:login][:password])
      session[:admin_id]= admin.id
      session[:admin_name]=admin.name
      redirect_to admins_path
    else
      redirect_to pubs_path
    end
  end

end
