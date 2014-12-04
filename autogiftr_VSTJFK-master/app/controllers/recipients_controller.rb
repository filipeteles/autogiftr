class RecipientsController < ApplicationController
  before_action :set_recipient, only: [:show, :edit, :update, :destroy]
respond_to :html
  def index
    @recipients = Recipient.all
    respond_with(@recipients)
  end

  def show
    respond_with(@recipient)
  end

  def new
    @recipient = Recipient.new
    respond_with(@recipient)
  end

  def edit
  end

  def create
    @recipient = Recipient.new(recipient_params)
    @recipient.user = current_user
    @recipient.save
    redirect_to user_account_path(current_user.user_account)
  end

  def update
    @recipient.update(recipient_params)
    redirect_to user_account_path(current_user.user_account)
  end

  def destroy
    @recipient.destroy
    redirect_to user_account_path(current_user.user_account)
  end

  private
    def set_recipient
      @recipient = Recipient.find(params[:id])
    end

    def recipient_params
      params.require(:recipient).permit(:name, :address, :user_id)
    end
end
