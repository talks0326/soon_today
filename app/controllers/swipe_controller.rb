class SwipeController < ApplicationController
  def index
  	@users = User.all
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
