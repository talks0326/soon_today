class TicketsController < ApplicationController
  def new
  end

  def create
  	ticket = current_user.tickets.create
  	redirect_to rooms_path
  end
end
