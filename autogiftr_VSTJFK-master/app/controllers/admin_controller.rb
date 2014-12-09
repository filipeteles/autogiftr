class AdminController < ApplicationController
	# layout 'admin', only: [:index]
  def index
  	@gifts = Gift.all
  	@future_occasions = Occasion.future_occasions.undelivered
  	@delivered = Occasion.delivered
  	authorize! :manage, @gifts
  end
end
