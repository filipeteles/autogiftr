class GiftsController < ApplicationController
  before_action :set_gift, only: [:show, :edit, :update, :destroy]

  respond_to :html
  def index
    @gifts = Gift.all
    respond_with(@gifts)
  end

  def show
    respond_with(@gift)
  end

  def new
    @gift = Gift.new
    authorize! :manage, @gift
    respond_with(@gift)
  end

  def edit
  end

  def create
    @gift = Gift.new(gift_params)
    @gift.save
    respond_with(@gift)
  end

  def update
    @gift.update(gift_params)
    authorize! :manage, @gift
    respond_with(@gift)
  end

  def destroy
    @gift.destroy
    authorize! :manage, @gift
    respond_with(@gift)
  end

  private
    def set_gift
      @gift = Gift.find(params[:id])
    end

    def gift_params
      params.require(:gift).permit(:name, :description, :price, :picture)
    end
end
