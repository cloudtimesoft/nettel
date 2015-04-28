class RechargeableCardsController < ApplicationController
  before_action :set_rechargeable_card, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  # GET /rechargeable_cards
  # GET /rechargeable_cards.json

=======
# GET /rechargeable_cards
# GET /rechargeable_cards.json
>>>>>>> 4eb5f8d08a621befb4072e341fe3dabc97fa5932
  def makecard
    @usrrechargeable_cards = RechargeableCard.all
    @cid = params[:id]
    @ctype = params[:card_type]
    @cbatch = params[:batch]
    @clen = params[:card_len].to_i
    @ctime = DateTime.parse(params[:time])
    @ceffective = params[:effective].to_i
    @csum = params[:card_sum]
    @camount = params[:amount]
    @cgiving = params[:giving]
    @ceffectivetime= params[:effectivetime].to_i
   # debugger
    @lenstr=""
    (@clen-@cbatch.length).times{@lenstr+="_"}
    @lenstr= "\'"+@cbatch+@lenstr+"\'"
   @search = @usrrechargeable_cards.find_by_sql("select * from rechargeable_cards where card_number like  "+@lenstr)
   # @usrrechargeable_cards.where("card_number LIKE :search",{:search =>@lenstr})
    @rcount=0
    #debugger
    if @search.count
      @rcount = @search.count
    end
<<<<<<< HEAD
    @lennum=""
    (@clen-@cbatch.length).times{@lennum+="9"}
    #debugger
    if  @lennum.to_i- @rcount > @camount.to_i
      #debugger
        @rechargeable_card=@search.last
        @lastnum=@clen-@cbatch.length
          if !@rechargeable_card
            @maxnum=0
          else
          @maxnum=@rechargeable_card.card_number[-@lastnum,@lastnum].to_i
          end
         RechargeableCard.transaction do
=======
    if (@clen-@cbatch.length).times{@lenstr+="9"}.to_i - @rcount > @camout.to_i
      @rechargeable_card=@rechargeable_cards.last
      @lastnum=@clen-@cbatch.length
      if !@rechargeable_card
        @maxnum=0
      else
        @maxnum=@rechargeable_card.card_number[-@lastnum,@lastnum].to_i
      end
      RechargeableCard.transaction do
>>>>>>> 4eb5f8d08a621befb4072e341fe3dabc97fa5932
        (@camount.to_i).times do
          @maxnum+=1
          @carnum=""
          if(@maxnum.to_s).length<@lastnum
            (@lastnum-(@maxnum.to_s).length).times{@carnum+="0"}
          end
          @carnum+=@maxnum.to_s
          @crand=""
          6.times{@crand += rand(9).to_s}
<<<<<<< HEAD
           RechargeableCard.create(pwd: @crand, make_card_id: @cid, card_number:@cbatch+@carnum, card_sum: @csum.to_i, effective_time:@ceffectivetime, card_type: @ctype, end_time:@ctime+@ceffective.months, content:"" , giving: @cgiving, failure:0)
        end

        #@rechargeable_cards.save
        end
=======
          RechargeableCard.create(pwd: @crand, make_card_id: @cid, card_number:@cbatch+@carnum, card_sum: @csum.to_i, effective_time:Time.now, card_type: @ctype, end_time:@ctime+@ceffective.months, content:"" , giving: @cgiving, failure:0)
        end
#@rechargeable_cards.save
      end
>>>>>>> 4eb5f8d08a621befb4072e341fe3dabc97fa5932
    else
#error
    end
    redirect_to :back
  end
  def index
#@rechargeable_cards = RechargeableCard.all
    @rechargeable_cards = RechargeableCard.paginate(page: params[:page])
  end
# GET /rechargeable_cards/1
# GET /rechargeable_cards/1.json
  def show

  end
# GET /rechargeable_cards/new
  def new
    @rechargeable_card = RechargeableCard.new
  end
# GET /rechargeable_cards/1/edit
  def edit
<<<<<<< HEAD



    end

  # POST /rechargeable_cards
  # POST /rechargeable_cards.json
=======
  end
# POST /rechargeable_cards
# POST /rechargeable_cards.json
>>>>>>> 4eb5f8d08a621befb4072e341fe3dabc97fa5932
  def create
    @rechargeable_card = RechargeableCard.new(rechargeable_card_params)
    respond_to do |format|
      if @rechargeable_card.save
        format.html { redirect_to @rechargeable_card, notice: 'Rechargeable card was successfully created.' }
        format.json { render :show, status: :created, location: @rechargeable_card }
      else
        format.html { render :new }
        format.json { render json: @rechargeable_card.errors, status: :unprocessable_entity }
      end
    end
  end
# PATCH/PUT /rechargeable_cards/1
# PATCH/PUT /rechargeable_cards/1.json
  def update
    respond_to do |format|
      if @rechargeable_card.update(rechargeable_card_params)
        format.html { redirect_to @rechargeable_card, notice: 'Rechargeable card was successfully updated.' }
        format.json { render :show, status: :ok, location: @rechargeable_card }
      else
        format.html { render :edit }
        format.json { render json: @rechargeable_card.errors, status: :unprocessable_entity }
      end
    end
  end
# DELETE /rechargeable_cards/1
# DELETE /rechargeable_cards/1.json
  def destroy
    @rechargeable_card.destroy
    redirect_to :back

  end
  private
# Use callbacks to share common setup or constraints between actions.
  def set_rechargeable_card
    @rechargeable_card = RechargeableCard.find(params[:id])
  end
# Never trust parameters from the scary internet, only allow the white list through.
  def rechargeable_card_params
    params.require(:rechargeable_card).permit(:pwd, :make_card_id, :card_number, :card_sum, :effective_time, :card_type, :end_time, :content, :giving, :failure)
  end
end

