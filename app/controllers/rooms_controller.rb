class RoomsController < ApplicationController
  def index
  	matthings = current_user.profile.gender? ? current_user.woman_mattchings : current_user.man_mattchings
  	@users = current_user.profile.gender? ? matthings.map{|m| m.man } : matthings.map{|m| m.woman }
  	@today_user = @users.map{|u| u unless u.tickets.where(end: false).blank? }.compact!
  end

  def show
  end
end
