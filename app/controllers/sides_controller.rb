class SidesController < ApplicationController


  def index

    @sidemessage = Sidemessage.new

    @sideclas = Sidecla.all

   @cla = Sidecla.find_by_keywords("news")
  @sidecontents = @cla.sidecontents

   @admins =Admin.all


    @keyword = params[:adc];
  end

  def new

  end



  def show

    @sidecontent = Sidecontent.find(params[:id])
    @sidecomment = Sidecomment.new
    @sidecomments = @sidecontent.sidecomments

   @sideclas = Sidecla.all

   @admins =Admin.all


  end

end
