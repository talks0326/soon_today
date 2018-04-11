class SwipeController < ApplicationController
  def index
  	@users = current_user.profile.gender? ? Profile.where(gender: false).map{|p| p.user } : Profile.where(gender: true).map{|p| p.user }
  end

  def judge
  	if params[:target_id].blank?
  		head 300
  	else
	  	if params[:judge] == "Like"
	  		judge = current_user.likes.build
	  		mattch = current_user.mattching_check(params[:target_id])
	  	elsif params[:judge] == "UnLike"
			judge = current_user.unlikes.build  		
	  	end
  		judge.target_id = params[:target_id]
  		judge.save
  		if mattch.blank?
  			head 200
  		else
  			@mattch = mattch
  		end
  	end
  end
end
