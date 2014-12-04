class AdminController < ApplicationController
	# layout 'admin', only: [:index]
  def index
  	@gifts = Gift.all
  	authorize! :manage, @gifts
  end
end
