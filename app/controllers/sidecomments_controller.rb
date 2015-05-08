class SidecommentsController < ApplicationController
  before_action :set_sidecomment, only: [:show, :edit, :update, :destroy]
  def index

    @sidecomments = Sidecomment.all
    @sidecontents = Sidecontent.all
  end


def new
  @sidecomment = Sidecomment.new
end





def show
  @sidecontents = Sidecontent.all
end

# GET /sidecontents/1/edit
def edit
end

# POST /sidecontents
# POST /sidecontents.json

def create

  @sidecomment = Sidecomment.new(sidecomment_params)


    if  @sidecomment.save

      redirect_to :back

    else

      render :new

  end
end

# PATCH/PUT /sidecontents/1
# PATCH/PUT /sidecontents/1.json
def update
  respond_to do |format|
    if  @sidecomment.update(sidecomment_params)
      format.html { redirect_to  @sidecomment, notice: 'Sidecontent was successfully updated.' }
      format.json { render :show, status: :ok, location:  @sidecomment }
    else
      format.html { render :edit }
      format.json { render json:  @sidecomment.errors, status: :unprocessable_entity }
    end
  end
end

# DELETE /sidecontents/1
# DELETE /sidecontents/1.json
def destroy
  @sidecomment.destroy
  respond_to do |format|
    format.html { redirect_to  sidecomments_url, notice: 'Sidecontent was successfully destroyed.' }
    format.json { head :no_content }
  end
end

private
# Use callbacks to share common setup or constraints between actions.
def set_sidecomment
  @sidecomment =  Sidecomment.find(params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.
def sidecomment_params
  params.require(:sidecomment).permit(:sidecontent_id, :nickname, :title, :content, :star, :time)
end

end