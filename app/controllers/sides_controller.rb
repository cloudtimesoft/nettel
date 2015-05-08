class SidesController < ApplicationController
  def index
    @sidemessage = Sidemessage.new
  end
end
