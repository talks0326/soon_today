class TicketsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def new
  end

  def create
  	#ticket = current_user.tickets.create
  	#redirect_to rooms_path
  end

  def today
	logger.debug("tickets")  	
  end

  def show
	@id = params[:id].to_i
  end

  def like
  	@id = params[:id].to_i
  	@mattch = @id % 2
  end
end
