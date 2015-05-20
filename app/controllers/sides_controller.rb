class SidesController < ApplicationController


  def index
    @sidemessage = Sidemessage.new

    @sideclas = Sidecla.all

   @cla = Sidecla.find_by_keywords("news")
  @sidecontents = @cla.sidecontents

   @admins =Admin.all

  end


  def new

  end



  def show

    @sidecontent = Sidecontent.find_by(params[:id])

  @sidecomment = Sidecomment.new
    @sidecomments = @sidecontent.sidecomments

   @sideclas = Sidecla.all

   @admins =Admin.all


  end

end
