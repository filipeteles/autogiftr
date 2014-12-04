class OccasionsController < ApplicationController
  before_action :set_occasion, only: [:show, :edit, :update, :destroy]
  respond_to :html
  def index
    @occasions = Occasion.all
    respond_with(@occasions)
  end

  def show
    @gifts = Gift.new
    respond_with(@occasion)
  end

  def new
    @occasion = Occasion.new
    @recipient = Recipient.find(params[:recipient])
    respond_with(@occasion)
  end

  def edit
  end

  def create
    @occasion = Occasion.new(occasion_params)
    @occasion.save
    redirect_to user_account_path(current_user.user_account)
  end

  def update
    @occasion.update(occasion_params)
    redirect_to user_account_path(current_user.user_account)
  end

  def destroy
    @occasion.destroy
    redirect_to user_account_path(current_user.user_account)
  end

  private
    def set_occasion
      @occasion = Occasion.find(params[:id])
    end

    def occasion_params
      params.require(:occasion).permit(:name, :date, :message, :recipient_id)
    end
end
