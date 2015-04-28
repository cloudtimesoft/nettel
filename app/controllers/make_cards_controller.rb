class MakeCardsController < ApplicationController
  before_action :set_make_card, only: [:show, :edit, :update, :destroy]

  # GET /make_cards
  # GET /make_cards.json
  def index
  @make_cards = MakeCard.all

  end

  # GET /make_cards/1
  # GET /make_cards/1.json
  def show
<<<<<<< HEAD
      @make_card = MakeCard.find(params[:id])
      #@rechargeable_cards_ids = @make_card.rechargeable_cards.ids

      @usrrechargeable_cards = @make_card.rechargeable_cards

      @rechargeable_cards = @usrrechargeable_cards.paginate(page: params[:page])
@lastmaxnum=""
      ((@make_card.card_len-@make_card.batch.length).times{@lastmaxnum += '9'}) #获取制卡位长数字部分最大数
      #@has_rechargeable_cards = RechargeableCard.all
      @lenstr=""
      @lastmaxnum.length.times{@lenstr+="_"}
      @lenstr= "\'"+@make_card.batch+@lenstr+"\'"
      @search = RechargeableCard.find_by_sql("select * from rechargeable_cards where card_number like  "+@lenstr)
      @carcount=0
      if @search
        @carcount=@search.count
      end
      @lesscarnum=@lastmaxnum.to_i-@carcount
    #debugger
=======
    @make_card = MakeCard.find(params[:id])
    @rechargeable_cards_ids = @make_card.rechargeable_cards.ids
    #@rechargeable_cards = RechargeableCard.paginate(page: params[:page])
    @rechargeable_cards = RechargeableCard.find(@rechargeable_cards_ids)
>>>>>>> 4eb5f8d08a621befb4072e341fe3dabc97fa5932
  end

  # GET /make_cards/new
  def new
    @make_card = MakeCard.new
  end

  # GET /make_cards/1/edit
  def edit
  end

  # POST /make_cards
  # POST /make_cards.json
  def create
    @make_card = MakeCard.new(make_card_params)

    respond_to do |format|
      if @make_card.save
        format.html { redirect_to @make_card, notice: 'Make card was successfully created.' }
        format.json { render :show, status: :created, location: @make_card }
      else
        format.html { render :new }
        format.json { render json: @make_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /make_cards/1
  # PATCH/PUT /make_cards/1.json
  def update
    respond_to do |format|
      if @make_card.update(make_card_params)
        format.html { redirect_to @make_card, notice: 'Make card was successfully updated.' }
        format.json { render :show, status: :ok, location: @make_card }
      else
        format.html { render :edit }
        format.json { render json: @make_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /make_cards/1
  # DELETE /make_cards/1.json
  def destroy
    @make_card.destroy
    RechargeableCard.where(make_card_id: params[:id]).delete_all
    respond_to do |format|
      format.html { redirect_to make_cards_url, notice: 'Make card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_make_card
      @make_card = MakeCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def make_card_params
      params.require(:make_card).permit(:admin_id, :card_type, :batch, :card_len, :time, :card_sum, :amount, :content, :giving)
    end
end
